.class public abstract Landroid/support/v4/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "MediaBrowserServiceCompat.java"
.field private static final DBG:Z = false
.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserServiceCompat"
.field private static final TAG:Ljava/lang/String; = "MediaBrowserServiceCompat"
.field private mBinder:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
.field private final mConnections:Landroid/support/v4/util/ArrayMap;
.field private final mHandler:Landroid/os/Handler;
.field  mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Landroid/support/v4/util/ArrayMap;
invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$000(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;I)Z
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->isValidPackage(Ljava/lang/String;I)Z
move-result v0
return v0
.end method
.method static synthetic access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
return-object v0
.end method
.method static synthetic access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$400(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
return-void
.end method
.method static synthetic access$500(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
return-void
.end method
.method static synthetic access$700(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
return-void
.end method
.method private addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
.registers 4
iget-object v0, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
return-void
.end method
.method private isValidPackage(Ljava/lang/String;I)Z
.registers 9
const/4 v4, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return v4
:cond_4
invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
move-result-object v2
array-length v0, v2
const/4 v1, 0x0
:goto_e
if-ge v1, v0, :cond_3
aget-object v5, v2, v1
invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_1a
const/4 v4, 0x1
goto :goto_3
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_e
.end method
.method private performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
.registers 7
new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;
invoke-direct {v0, p0, p1, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z
move-result v1
if-nez v1, :cond_33
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "onLoadChildren must call detach() or sendResult() before returning for package="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " id="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_33
return-void
.end method
.method private performLoadItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
.registers 7
new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$4;
invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$4;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V
invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z
move-result v1
if-nez v1, :cond_27
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "onLoadItem must call detach() or sendResult() before returning for id="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_27
return-void
.end method
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 4
return-void
.end method
.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;
return-object v0
.end method
.method public notifyChildrenChanged(Ljava/lang/String;)V
.registers 4
.parameter
.end parameter
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "parentId cannot be null in notifyChildrenChanged"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;
new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$2;
invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 4
const-string v0, "android.media.browse.MediaBrowserServiceCompat"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mBinder:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public onCreate()V
.registers 3
invoke-super {p0}, Landroid/app/Service;->onCreate()V
new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mBinder:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
return-void
.end method
.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public abstract onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
return-void
.end method
.method public setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Session token may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;
if-eqz v0, :cond_16
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The session token has already been set."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;
new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$1;
invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method