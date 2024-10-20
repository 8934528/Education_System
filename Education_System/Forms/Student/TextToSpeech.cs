using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Speech.Synthesis;
using System.Threading.Tasks;

namespace Education_System.Helpers
{
    public class TextToSpeech
    {
        private SpeechSynthesizer _synthesizer;

        private void InitializeSynthesizer()
        {
            if (_synthesizer == null)
            {
                _synthesizer = new SpeechSynthesizer();
                _synthesizer.SetOutputToDefaultAudioDevice();
                _synthesizer.SpeakCompleted += (s, e) => {
                };
            }
        }

        public async Task SpeakAsync(string text)
        {
            InitializeSynthesizer();

            if (string.IsNullOrEmpty(text))
            {
                throw new ArgumentException("Text cannot be null or empty.");
            }

            await Task.Run(() => _synthesizer.Speak(text));
        }

        public void Stop()
        {
            if (_synthesizer != null && _synthesizer.State == SynthesizerState.Speaking)
            {
                _synthesizer.SpeakAsyncCancelAll();
            }
        }
    }
}