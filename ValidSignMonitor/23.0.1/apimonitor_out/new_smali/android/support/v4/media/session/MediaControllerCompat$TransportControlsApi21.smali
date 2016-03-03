.class  Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.source "MediaControllerCompat.java"
.field protected final mControlsObj:Ljava/lang/Object;
.method public constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
return-void
.end method
.method public fastForward()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->fastForward(Ljava/lang/Object;)V
return-void
.end method
.method public pause()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->pause(Ljava/lang/Object;)V
return-void
.end method
.method public play()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->play(Ljava/lang/Object;)V
return-void
.end method
.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->playFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->playFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public rewind()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->rewind(Ljava/lang/Object;)V
return-void
.end method
.method public seekTo(J)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->seekTo(Ljava/lang/Object;J)V
return-void
.end method
.method public sendCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;Landroid/os/Bundle;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public setRating(Landroid/support/v4/media/RatingCompat;)V
.registers 4
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
if-eqz p1, :cond_c
invoke-virtual {p1}, Landroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;
move-result-object v0
:goto_8
invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->setRating(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
:cond_c
const/4 v0, 0x0
goto :goto_8
.end method
.method public skipToNext()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToNext(Ljava/lang/Object;)V
return-void
.end method
.method public skipToPrevious()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToPrevious(Ljava/lang/Object;)V
return-void
.end method
.method public skipToQueueItem(J)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToQueueItem(Ljava/lang/Object;J)V
return-void
.end method
.method public stop()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->stop(Ljava/lang/Object;)V
return-void
.end method