using Education_System.Helpers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DocumentFormat.OpenXml.Packaging;
using iTextSharp.text.pdf;
using iTextSharp.text.pdf.parser;

namespace Education_System.Forms.Student
{
    public partial class ttsReader : System.Web.UI.Page
    {
        private TextToSpeech tts;
        protected void Page_Load(object sender, EventArgs e)
        {
            tts = new TextToSpeech();
        }
        protected async void btnSpeak_Click(object sender, EventArgs e)
        {
            string textToRead = txtSpeechText.Text;

            if (!string.IsNullOrEmpty(textToRead))
            {
                await tts.SpeakAsync(textToRead);
            }
            else
            {
                string script = "<script>swal('Please enter some text to read aloud.');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", script, false);
            }
        }
        private async Task SpeakAsync(string text)
        {
            await Task.Run(() => tts.SpeakAsync(text));
        }

        protected void btnLoadFile_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();

                if (fileExtension == ".txt")
                {
                    // Read text file content
                    using (StreamReader reader = new StreamReader(FileUpload1.FileContent))
                    {
                        string fileContent = reader.ReadToEnd();
                        txtSpeechText.Text = fileContent;
                    }
                }
                else if (fileExtension == ".pdf")
                {
                    // Read PDF file content using iTextSharp
                    string pdfText = ExtractTextFromPdf(FileUpload1.FileContent);
                    txtSpeechText.Text = pdfText;
                }
                else if (fileExtension == ".docx")
                {
                    // Read Word document content using OpenXML
                    string docxText = ExtractTextFromDocx(FileUpload1.FileContent);
                    txtSpeechText.Text = docxText;
                }
                else
                {
                    string script = "<script>swal('Only .txt, .pdf, and .docx files are supported.');</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", script, false);
                }
            }
            else
            {
                string script = "<script>swal('Please upload a file.');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", script, false);
            }
        }

        // Extract text from PDF using iTextSharp
        private string ExtractTextFromPdf(Stream pdfStream)
        {
            using (PdfReader reader = new PdfReader(pdfStream))
            {
                StringWriter text = new StringWriter();

                for (int i = 1; i <= reader.NumberOfPages; i++)
                {
                    text.WriteLine(PdfTextExtractor.GetTextFromPage(reader, i));
                }

                return text.ToString();
            }
        }

        // Extract text from Word document using OpenXML SDK
        private string ExtractTextFromDocx(Stream docxStream)
        {
            using (MemoryStream memStream = new MemoryStream())
            {
                docxStream.CopyTo(memStream);
                using (WordprocessingDocument wordDoc = WordprocessingDocument.Open(memStream, false))
                {
                    StringWriter text = new StringWriter();

                    var body = wordDoc.MainDocumentPart.Document.Body;
                    text.Write(body.InnerText);

                    return text.ToString();
                }
            }
        }

        
        

        
    }
}