.class  Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"
.implements Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
.field private final mAudioManager:Landroid/media/AudioManager;
.field private mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.field private final mComponentName:Landroid/content/ComponentName;
.field private final mContext:Landroid/content/Context;
.field private final mControllerCallbacks:Landroid/os/RemoteCallbackList;
.field private mDestroyed:Z
.field private mExtras:Landroid/os/Bundle;
.field private mFlags:I
.field private final mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.field private mIsActive:Z
.field private mIsMbrRegistered:Z
.field private mIsRccRegistered:Z
.field private mLocalStream:I
.field private final mLock:Ljava/lang/Object;
.field private final mMediaButtonEventReceiver:Landroid/app/PendingIntent;
.field private mMetadata:Landroid/support/v4/media/MediaMetadataCompat;
.field private final mPackageName:Ljava/lang/String;
.field private mQueue:Ljava/util/List;
.field private mQueueTitle:Ljava/lang/CharSequence;
.field private mRatingType:I
.field private final mRccObj:Ljava/lang/Object;
.field private mSessionActivity:Landroid/app/PendingIntent;
.field private mState:Landroid/support/v4/media/session/PlaybackStateCompat;
.field private final mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;
.field private final mTag:Ljava/lang/String;
.field private final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
.field private mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;
.field private mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
.field private mVolumeType:I
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
.registers 8
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;
new-instance v0, Landroid/os/RemoteCallbackList;
invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z
iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z
iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z
iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;
invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;
if-nez p3, :cond_2b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "MediaButtonReceiver component may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;
const-string v0, "audio"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/AudioManager;
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;
iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;
iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;
iput-object p4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;
invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;
invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
iput v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I
const/4 v0, 0x1
iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I
const/4 v0, 0x3
iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_73
invoke-static {p4}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
:goto_72
return-void
:cond_73
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
goto :goto_72
.end method
.method static synthetic access$1000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z
return v0
.end method
.method static synthetic access$1100(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
return-object v0
.end method
.method static synthetic access$1200(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic access$1500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/app/PendingIntent;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;
return-object v0
.end method
.method static synthetic access$1600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;
return-object v0
.end method
.method static synthetic access$1700(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V
return-void
.end method
.method static synthetic access$1800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V
return-void
.end method
.method static synthetic access$1900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/MediaMetadataCompat;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;
return-object v0
.end method
.method static synthetic access$2000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;
.registers 2
invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->getStateWithUpdatedPosition()Landroid/support/v4/media/session/PlaybackStateCompat;
move-result-object v0
return-object v0
.end method
.method static synthetic access$2100(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/util/List;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$2200(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;
return-object v0
.end method
.method static synthetic access$2300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;
return-object v0
.end method
.method static synthetic access$2400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
.registers 2
iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I
return v0
.end method
.method static synthetic access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;
return-object v0
.end method
.method static synthetic access$2600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
return-object v0
.end method
.method static synthetic access$300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/VolumeProviderCompat;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
return-object v0
.end method
.method static synthetic access$400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
.registers 2
iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I
return v0
.end method
.method static synthetic access$500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
.registers 2
iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I
return v0
.end method
.method static synthetic access$600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
return-void
.end method
.method static synthetic access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
return-object v0
.end method
.method static synthetic access$900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
.registers 2
iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I
return v0
.end method
.method private adjustVolume(II)V
.registers 5
iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I
const/4 v1, 0x2
if-ne v0, v1, :cond_f
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V
:cond_e
:goto_e
return-void
:cond_f
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;
iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I
invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
goto :goto_e
.end method
.method private getStateWithUpdatedPosition()Landroid/support/v4/media/session/PlaybackStateCompat;
.registers 21
const-wide/16 v10, -0x1
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;
monitor-enter v6
:try_start_7
move-object/from16 v0, p0
iget-object v12, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;
if-eqz v3, :cond_27
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;
const-string v13, "android.media.metadata.DURATION"
invoke-virtual {v3, v13}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_27
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;
const-string v13, "android.media.metadata.DURATION"
invoke-virtual {v3, v13}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J
move-result-wide v10
:cond_27
monitor-exit v6
:try_end_28
.catchall {:try_start_7 .. :try_end_28} :catchall_83
const/4 v9, 0x0
if-eqz v12, :cond_80
invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I
move-result v3
const/4 v6, 0x3
if-eq v3, v6, :cond_40
invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I
move-result v3
const/4 v6, 0x4
if-eq v3, v6, :cond_40
invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I
move-result v3
const/4 v6, 0x5
if-ne v3, v6, :cond_80
:cond_40
invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J
move-result-wide v14
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v7
const-wide/16 v16, 0x0
cmp-long v3, v14, v16
if-lez v3, :cond_80
invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F
move-result v3
sub-long v16, v7, v14
move-wide/from16 v0, v16
long-to-float v6, v0
mul-float/2addr v3, v6
float-to-long v0, v3
move-wide/from16 v16, v0
invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J
move-result-wide v18
add-long v4, v16, v18
const-wide/16 v16, 0x0
cmp-long v3, v10, v16
if-ltz v3, :cond_86
cmp-long v3, v4, v10
if-lez v3, :cond_86
move-wide v4, v10
:goto_6c
:cond_6c
new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
invoke-direct {v2, v12}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I
move-result v3
invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F
move-result v6
invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;
move-result-object v9
:cond_80
if-nez v9, :cond_8f
:goto_82
return-object v12
:catchall_83
move-exception v3
:try_start_84
monitor-exit v6
:try_end_85
.catchall {:try_start_84 .. :try_end_85} :catchall_83
throw v3
:cond_86
const-wide/16 v16, 0x0
cmp-long v3, v4, v16
if-gez v3, :cond_6c
const-wide/16 v4, 0x0
goto :goto_6c
:cond_8f
move-object v12, v9
goto :goto_82
.end method
.method private sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 7
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_8
if-ltz v1, :cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_12
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1e
:goto_15
add-int/lit8 v1, v1, -0x1
goto :goto_8
:cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
return-void
:catch_1e
move-exception v3
goto :goto_15
.end method
.method private sendMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
.registers 6
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_8
if-ltz v1, :cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_12
invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1e
:goto_15
add-int/lit8 v1, v1, -0x1
goto :goto_8
:cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
return-void
:catch_1e
move-exception v3
goto :goto_15
.end method
.method private sendQueue(Ljava/util/List;)V
.registers 6
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_8
if-ltz v1, :cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_12
invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueChanged(Ljava/util/List;)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1e
:goto_15
add-int/lit8 v1, v1, -0x1
goto :goto_8
:cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
return-void
:catch_1e
move-exception v3
goto :goto_15
.end method
.method private sendQueueTitle(Ljava/lang/CharSequence;)V
.registers 6
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_8
if-ltz v1, :cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_12
invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1e
:goto_15
add-int/lit8 v1, v1, -0x1
goto :goto_8
:cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
return-void
:catch_1e
move-exception v3
goto :goto_15
.end method
.method private sendSessionDestroyed()V
.registers 5
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_8
if-ltz v1, :cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_12
invoke-interface {v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_23
:goto_15
add-int/lit8 v1, v1, -0x1
goto :goto_8
:cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->kill()V
return-void
:catch_23
move-exception v3
goto :goto_15
.end method
.method private sendState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.registers 6
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_8
if-ltz v1, :cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_12
invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1e
:goto_15
add-int/lit8 v1, v1, -0x1
goto :goto_8
:cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
return-void
:catch_1e
move-exception v3
goto :goto_15
.end method
.method private sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
.registers 6
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_8
if-ltz v1, :cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_12
invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1e
:goto_15
add-int/lit8 v1, v1, -0x1
goto :goto_8
:cond_18
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
return-void
:catch_1e
move-exception v3
goto :goto_15
.end method
.method private setVolumeTo(II)V
.registers 5
iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I
const/4 v1, 0x2
if-ne v0, v1, :cond_f
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onSetVolumeTo(I)V
:cond_e
:goto_e
return-void
:cond_f
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;
iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I
invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V
goto :goto_e
.end method
.method private update()Z
.registers 7
const/4 v5, 0x1
const/16 v3, 0x12
const/4 v4, 0x0
const/4 v0, 0x0
iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z
if-eqz v1, :cond_86
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x8
if-lt v1, v2, :cond_28
iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z
if-nez v1, :cond_4b
iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I
and-int/lit8 v1, v1, 0x1
if-eqz v1, :cond_4b
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v1, v3, :cond_43
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;
invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
:goto_26
iput-boolean v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z
:cond_28
:goto_28
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xe
if-lt v1, v2, :cond_42
iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z
if-nez v1, :cond_6d
iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I
and-int/lit8 v1, v1, 0x2
if-eqz v1, :cond_6d
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
iput-boolean v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z
const/4 v0, 0x1
:cond_42
:goto_42
return v0
:cond_43
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;
invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V
goto :goto_26
:cond_4b
iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z
if-eqz v1, :cond_28
iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I
and-int/lit8 v1, v1, 0x1
if-nez v1, :cond_28
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v1, v3, :cond_65
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;
invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
:goto_62
iput-boolean v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z
goto :goto_28
:cond_65
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;
invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V
goto :goto_62
:cond_6d
iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z
if-eqz v1, :cond_42
iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I
and-int/lit8 v1, v1, 0x2
if-nez v1, :cond_42
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-static {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
iput-boolean v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z
goto :goto_42
:cond_86
iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z
if-eqz v1, :cond_99
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v1, v3, :cond_ac
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;
invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
:goto_97
iput-boolean v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z
:cond_99
iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z
if-eqz v1, :cond_42
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-static {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
iput-boolean v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z
goto :goto_42
:cond_ac
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;
invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V
goto :goto_97
.end method
.method public getMediaSession()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getRemoteControlClient()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
return-object v0
.end method
.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
return-object v0
.end method
.method public isActive()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z
return v0
.end method
.method public release()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z
invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z
invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendSessionDestroyed()V
return-void
.end method
.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public setActive(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z
if-ne p1, v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z
invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z
move-result v0
if-eqz v0, :cond_4
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
goto :goto_4
.end method
.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
.registers 10
const/4 v6, 0x0
const/16 v5, 0x13
const/16 v4, 0x12
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;
if-ne p1, v3, :cond_a
:goto_9
return-void
:cond_a
if-eqz p1, :cond_10
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
if-ge v3, v4, :cond_25
:cond_10
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v3, v4, :cond_19
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-static {v3, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_19
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v3, v5, :cond_22
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-static {v3, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
:goto_22
:cond_22
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;
goto :goto_9
:cond_25
if-nez p2, :cond_2c
new-instance p2, Landroid/os/Handler;
invoke-direct {p2}, Landroid/os/Handler;-><init>()V
:cond_2c
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;
invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v3, v4, :cond_3e
invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-static {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_3e
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v3, v5, :cond_22
invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->createMetadataUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;
move-result-object v1
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-static {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_22
.end method
.method public setExtras(Landroid/os/Bundle;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;
return-void
.end method
.method public setFlags(I)V
.registers 4
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_a
invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z
return-void
:catchall_a
move-exception v0
:try_start_b
monitor-exit v1
:try_end_c
.catchall {:try_start_b .. :try_end_c} :catchall_a
throw v0
.end method
.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
.registers 2
return-void
.end method
.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;
monitor-enter v1
:try_start_4
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;
monitor-exit v1
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_f
invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z
if-nez v1, :cond_12
:cond_e
:goto_e
return-void
:catchall_f
move-exception v0
:try_start_10
monitor-exit v1
:try_end_11
.catchall {:try_start_10 .. :try_end_11} :catchall_f
throw v0
:cond_12
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x13
if-lt v1, v2, :cond_32
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
if-nez p1, :cond_26
:goto_1c
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
if-nez v2, :cond_2b
const-wide/16 v2, 0x0
:goto_22
invoke-static {v1, v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V
goto :goto_e
:cond_26
invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;
move-result-object v0
goto :goto_1c
:cond_2b
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J
move-result-wide v2
goto :goto_22
:cond_32
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xe
if-lt v1, v2, :cond_e
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
if-nez p1, :cond_40
:goto_3c
invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V
goto :goto_e
:cond_40
invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;
move-result-object v0
goto :goto_3c
.end method
.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.registers 11
const/16 v8, 0x12
const/16 v7, 0xe
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;
monitor-enter v1
:try_start_7
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
monitor-exit v1
:try_end_a
.catchall {:try_start_7 .. :try_end_a} :catchall_12
invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z
if-nez v0, :cond_15
:cond_11
:goto_11
return-void
:catchall_12
move-exception v0
:try_start_13
monitor-exit v1
:try_end_14
.catchall {:try_start_13 .. :try_end_14} :catchall_12
throw v0
:cond_15
if-nez p1, :cond_29
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, v7, :cond_11
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
const-wide/16 v2, 0x0
invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V
goto :goto_11
:cond_29
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, v8, :cond_52
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I
move-result v1
invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J
move-result-wide v2
invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F
move-result v4
invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J
move-result-wide v5
invoke-static/range {v0 .. v6}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setState(Ljava/lang/Object;IJFJ)V
:cond_42
:goto_42
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_60
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J
move-result-wide v2
invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setTransportControlFlags(Ljava/lang/Object;J)V
goto :goto_11
:cond_52
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, v7, :cond_42
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I
move-result v1
invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V
goto :goto_42
:cond_60
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, v8, :cond_6e
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J
move-result-wide v2
invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setTransportControlFlags(Ljava/lang/Object;J)V
goto :goto_11
:cond_6e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, v7, :cond_11
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;
invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J
move-result-wide v2
invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V
goto :goto_11
.end method
.method public setPlaybackToLocal(I)V
.registers 9
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
if-eqz v1, :cond_a
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V
:cond_a
const/4 v1, 0x1
iput v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I
new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;
iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I
iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I
const/4 v3, 0x2
iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;
iget v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I
invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
move-result v4
iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;
iget v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I
invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I
move-result v5
invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V
invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
return-void
.end method
.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
.registers 8
if-nez p1, :cond_a
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "volumeProvider may not be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
if-eqz v1, :cond_14
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V
:cond_14
const/4 v1, 0x2
iput v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;
iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I
iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
invoke-virtual {v3}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I
move-result v3
iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
invoke-virtual {v4}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I
move-result v4
iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
invoke-virtual {v5}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I
move-result v5
invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V
invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;
invoke-virtual {p1, v1}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V
return-void
.end method
.method public setQueue(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;
invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueue(Ljava/util/List;)V
return-void
.end method
.method public setQueueTitle(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;
invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueueTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setRatingType(I)V
.registers 2
iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I
return-void
.end method
.method public setSessionActivity(Landroid/app/PendingIntent;)V
.registers 4
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;
monitor-exit v1
return-void
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method