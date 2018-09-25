using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Speech.Synthesis;

namespace JBC_PMIS_Government.Global
{
    public class Voice
    {
        SpeechSynthesizer voice = new SpeechSynthesizer();

        public void speak(string pText)
        {
            try
            {
                if (GlobalVariables.Speak)
                {
                    voice.SpeakAsyncCancelAll();
                    voice.SelectVoiceByHints(VoiceGender.Female);
                    voice.Volume = 100;
                    voice.Rate = 0;

                    voice.SpeakAsync(pText);
                }
            }
            catch { }
        }

        public void stopSpeaking()
        {
            try
            {
                voice.SpeakAsyncCancelAll();
            }
            catch { }
        }
    }
}
