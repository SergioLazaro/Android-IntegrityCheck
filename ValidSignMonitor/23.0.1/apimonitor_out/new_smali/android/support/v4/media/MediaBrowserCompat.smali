.class public final Landroid/support/v4/media/MediaBrowserCompat;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"
.field private final mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
return-void
.end method
.method public connect()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->connect()V
return-void
.end method
.method public disconnect()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->disconnect()V
return-void
.end method
.method public getExtras()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getExtras()Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
return-void
.end method
.method public getRoot()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getRoot()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getServiceComponent()Landroid/content/ComponentName;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getServiceComponent()Landroid/content/ComponentName;
move-result-object v0
return-object v0
.end method
.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
move-result-object v0
return-object v0
.end method
.method public isConnected()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z
move-result v0
return v0
.end method
.method public subscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->subscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
return-void
.end method
.method public unsubscribe(Ljava/lang/String;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->unsubscribe(Ljava/lang/String;)V
return-void
.end method