.class  Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;
.super Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;
.source "MediaSessionCompatApi23.java"
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)V
return-void
.end method
.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;
check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
return-void
.end method