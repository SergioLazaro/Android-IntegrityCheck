.class  Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;
.super Landroid/media/session/MediaController$Callback;
.source "MediaControllerCompatApi21.java"
.field protected final mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)V
.registers 2
invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;
return-void
.end method
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onMetadataChanged(Ljava/lang/Object;)V
return-void
.end method
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onPlaybackStateChanged(Ljava/lang/Object;)V
return-void
.end method
.method public onSessionDestroyed()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;
invoke-interface {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onSessionDestroyed()V
return-void
.end method
.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method