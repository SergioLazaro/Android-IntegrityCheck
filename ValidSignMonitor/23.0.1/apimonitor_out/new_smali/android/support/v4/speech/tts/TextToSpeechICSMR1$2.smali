.class final Landroid/support/v4/speech/tts/TextToSpeechICSMR1$2;
.super Ljava/lang/Object;
.source "TextToSpeechICSMR1.java"
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
.field final synthetic val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;
.method constructor <init>(Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$2;->val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onUtteranceCompleted(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$2;->val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;
invoke-interface {v0, p1}, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;->onStart(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$2;->val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;
invoke-interface {v0, p1}, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;->onDone(Ljava/lang/String;)V
return-void
.end method