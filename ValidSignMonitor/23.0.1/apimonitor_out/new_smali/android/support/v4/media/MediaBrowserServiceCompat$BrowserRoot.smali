.class public final Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"
.field private final mExtras:Landroid/os/Bundle;
.field private final mRootId:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->mRootId:Ljava/lang/String;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->mExtras:Landroid/os/Bundle;
return-void
.end method
.method public getExtras()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->mExtras:Landroid/os/Bundle;
return-object v0
.end method
.method public getRootId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->mRootId:Ljava/lang/String;
return-object v0
.end method