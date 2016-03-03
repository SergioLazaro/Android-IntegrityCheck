.class final Landroid/support/v4/speech/tts/TextToSpeechICSMR1$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TextToSpeechICSMR1.java"
.field final synthetic val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;
.method constructor <init>(Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$1;->val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;
invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V
return-void
.end method
.method public onDone(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$1;->val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;
invoke-interface {v0, p1}, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;->onDone(Ljava/lang/String;)V
return-void
.end method
.method public onError(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$1;->val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;
invoke-interface {v0, p1}, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;->onError(Ljava/lang/String;)V
return-void
.end method
.method public onStart(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$1;->val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;
invoke-interface {v0, p1}, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;->onStart(Ljava/lang/String;)V
return-void
.end method