.class  Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"
.field private static final CONNECT_STATE_CONNECTED:I = 0x2
.field private static final CONNECT_STATE_CONNECTING:I = 0x1
.field private static final CONNECT_STATE_DISCONNECTED:I = 0x0
.field private static final CONNECT_STATE_SUSPENDED:I = 0x3
.field private static final DBG:Z = false
.field private static final TAG:Ljava/lang/String; = "MediaBrowserCompat"
.field private final mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.field private final mContext:Landroid/content/Context;
.field private mExtras:Landroid/os/Bundle;
.field private final mHandler:Landroid/os/Handler;
.field private mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
.field private final mRootHints:Landroid/os/Bundle;
.field private mRootId:Ljava/lang/String;
.field private mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
.field private mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.field private final mServiceComponent:Landroid/content/ComponentName;
.field private mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
.field private mState:I
.field private final mSubscriptions:Landroid/support/v4/util/ArrayMap;
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;
new-instance v0, Landroid/support/v4/util/ArrayMap;
invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
if-nez p1, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "context must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
if-nez p2, :cond_28
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "service component must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
if-nez p3, :cond_32
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "connection callback must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_32
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;
iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;
return-void
.end method
.method static synthetic access$1002(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Bundle;)Landroid/os/Bundle;
.registers 2
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;
return-object p1
.end method
.method static synthetic access$1100(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/util/ArrayMap;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;
return-object v0
.end method
.method static synthetic access$1200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
return-object v0
.end method
.method static synthetic access$1202(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.registers 2
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
return-object p1
.end method
.method static synthetic access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompat;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
return-object v0
.end method
.method static synthetic access$1302(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompat;)Landroid/support/v4/media/IMediaBrowserServiceCompat;
.registers 2
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
return-object p1
.end method
.method static synthetic access$1400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/content/ComponentName;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;
return-object v0
.end method
.method static synthetic access$1500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;
.registers 2
invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getNewServiceCallbacks()Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$1700(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;
return-object v0
.end method
.method static synthetic access$1800(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onServiceConnected(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
return-void
.end method
.method static synthetic access$1900(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onConnectionFailed(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
return-void
.end method
.method static synthetic access$200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
return-object v0
.end method
.method static synthetic access$2000(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onLoadChildren(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V
return-void
.end method
.method static synthetic access$300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
.registers 1
invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V
return-void
.end method
.method static synthetic access$400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
return-object v0
.end method
.method static synthetic access$500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I
.registers 2
iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
return v0
.end method
.method static synthetic access$602(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;I)I
.registers 2
iput p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
return p1
.end method
.method static synthetic access$700(I)Ljava/lang/String;
.registers 2
invoke-static {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$802(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;
return-object p1
.end method
.method static synthetic access$902(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 2
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
return-object p1
.end method
.method private forceCloseConnection()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:cond_c
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;
iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
return-void
.end method
.method private getNewServiceCallbacks()Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;
.registers 2
new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;
invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
return-object v0
.end method
.method private static getStateLabel(I)Ljava/lang/String;
.registers 3
packed-switch p0, :pswitch_data_24
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "UNKNOWN/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_16
return-object v0
:pswitch_17
const-string v0, "CONNECT_STATE_DISCONNECTED"
goto :goto_16
:pswitch_1a
const-string v0, "CONNECT_STATE_CONNECTING"
goto :goto_16
:pswitch_1d
const-string v0, "CONNECT_STATE_CONNECTED"
goto :goto_16
:pswitch_20
const-string v0, "CONNECT_STATE_SUSPENDED"
goto :goto_16
nop
:pswitch_data_24
.packed-switch 0x0
:pswitch_17
:pswitch_1a
:pswitch_1d
:pswitch_20
.end packed-switch
.end method
.method private isCurrent(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z
.registers 6
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
if-eq v0, p1, :cond_3e
iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
if-eqz v0, :cond_3c
const-string v0, "MediaBrowserCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " with mServiceConnection="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " this="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_3c
const/4 v0, 0x0
:goto_3d
return v0
:cond_3e
const/4 v0, 0x1
goto :goto_3d
.end method
.method private final onConnectionFailed(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;
new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$6;
invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$6;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private final onLoadChildren(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;
new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;
invoke-direct {v1, p0, p1, p3, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private final onServiceConnected(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
.registers 12
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;
new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public connect()V
.registers 8
const/4 v5, 0x1
iget v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
if-eqz v4, :cond_2a
new-instance v4, Ljava/lang/IllegalStateException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "connect() called while not disconnected (state="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
invoke-static {v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ")"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v4
:cond_2a
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
if-eqz v4, :cond_49
new-instance v4, Ljava/lang/RuntimeException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "mServiceBinder should be null. Instead it is "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v4
:cond_49
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
if-eqz v4, :cond_68
new-instance v4, Ljava/lang/RuntimeException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "mServiceCallbacks should be null. Instead it is "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v4
:cond_68
iput v5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
new-instance v2, Landroid/content/Intent;
const-string v4, "android.media.browse.MediaBrowserServiceCompat"
invoke-static {v4}, Ldroidbox/android/content/Intent;->droidbox_cons(Ljava/lang/String;)V
invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;
invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
const/4 v4, 0x0
invoke-direct {v3, p0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$1;)V
iput-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
const/4 v0, 0x0
:try_start_7f
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;
iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
const/4 v6, 0x1
invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
:try_end_87
.catch Ljava/lang/Exception; {:try_start_7f .. :try_end_87} :catch_95
move-result v0
:goto_88
if-nez v0, :cond_94
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;
new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;
invoke-direct {v5, p0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/content/ServiceConnection;)V
invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_94
return-void
:catch_95
move-exception v1
const-string v4, "MediaBrowserCompat"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Failed binding to service "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_88
.end method
.method public disconnect()V
.registers 5
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
if-eqz v1, :cond_b
:try_start_4
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
invoke-interface {v1, v2}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
:cond_b
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_f
:goto_b
invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V
return-void
:catch_f
move-exception v0
const-string v1, "MediaBrowserCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "RemoteException during connect for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_b
.end method
.method  dump()V
.registers 4
const-string v0, "MediaBrowserCompat"
const-string v1, "MediaBrowserCompat..."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "MediaBrowserCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "  mServiceComponent="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "MediaBrowserCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "  mCallback="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "MediaBrowserCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "  mRootHints="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "MediaBrowserCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "  mState="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "MediaBrowserCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "  mServiceConnection="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "MediaBrowserCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "  mServiceBinder="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "MediaBrowserCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "  mServiceCallbacks="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "MediaBrowserCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "  mRootId="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "MediaBrowserCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "  mMediaSessionToken="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public getExtras()Landroid/os/Bundle;
.registers 4
invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z
move-result v0
if-nez v0, :cond_2b
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "getExtras() called while not connected (state="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;
return-object v0
.end method
.method public getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.registers 7
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_e
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "mediaId is empty."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_e
if-nez p2, :cond_18
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "cb is null."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_18
iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
const/4 v3, 0x2
if-eq v2, v3, :cond_2f
const-string v2, "MediaBrowserCompat"
const-string v3, "Not connected, unable to retrieve the MediaItem."
invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;
new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;
invoke-direct {v3, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_2e
return-void
:cond_2f
new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;
invoke-direct {v1, p0, v2, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Handler;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V
:try_start_36
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
invoke-interface {v2, p1, v1}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
:try_end_3b
.catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c
goto :goto_2e
:catch_3c
move-exception v0
const-string v2, "MediaBrowserCompat"
const-string v3, "Remote error getting media item."
invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;
new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;
invoke-direct {v3, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_2e
.end method
.method public getRoot()Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z
move-result v0
if-nez v0, :cond_2b
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "getSessionToken() called while not connected(state="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;
return-object v0
.end method
.method public getServiceComponent()Landroid/content/ComponentName;
.registers 4
invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z
move-result v0
if-nez v0, :cond_27
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "getServiceComponent() called while not connected (state="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;
return-object v0
.end method
.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 4
invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z
move-result v0
if-nez v0, :cond_27
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "getSessionToken() called while not connected(state="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
return-object v0
.end method
.method public isConnected()Z
.registers 3
iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
const/4 v1, 0x2
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public subscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
.registers 9
.parameter
.end parameter
.parameter
.end parameter
if-nez p1, :cond_a
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string v4, "parentId is null"
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_a
if-nez p2, :cond_14
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string v4, "callback is null"
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_14
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v3, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;
if-nez v2, :cond_3a
const/4 v1, 0x1
:goto_1f
if-eqz v1, :cond_2b
new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;
invoke-direct {v2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v3, p1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2b
iput-object p2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;->callback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
iget v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
const/4 v4, 0x2
if-ne v3, v4, :cond_39
:try_start_32
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
invoke-interface {v3, p1, v4}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
:cond_39
:goto_39
:try_end_39
.catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3c
return-void
:cond_3a
const/4 v1, 0x0
goto :goto_1f
:catch_3c
move-exception v0
const-string v3, "MediaBrowserCompat"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "addSubscription failed with RemoteException parentId="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_39
.end method
.method public unsubscribe(Ljava/lang/String;)V
.registers 7
.parameter
.end parameter
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_e
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "parentId is empty."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_e
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;
iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
const/4 v3, 0x2
if-ne v2, v3, :cond_24
if-eqz v1, :cond_24
:try_start_1d
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
invoke-interface {v2, p1, v3}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
:goto_24
:cond_24
:try_end_24
.catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25
return-void
:catch_25
move-exception v0
const-string v2, "MediaBrowserCompat"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "removeSubscription failed with RemoteException parentId="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_24
.end method