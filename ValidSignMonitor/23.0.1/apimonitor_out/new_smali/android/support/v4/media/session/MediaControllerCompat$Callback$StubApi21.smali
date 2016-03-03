.class  Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"
.implements Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;
.field final synthetic this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.method private constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/support/v4/media/session/MediaControllerCompat$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
return-void
.end method
.method public onMetadataChanged(Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;
invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
return-void
.end method
.method public onPlaybackStateChanged(Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;
invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
return-void
.end method
.method public onSessionDestroyed()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;
invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V
return-void
.end method
.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method