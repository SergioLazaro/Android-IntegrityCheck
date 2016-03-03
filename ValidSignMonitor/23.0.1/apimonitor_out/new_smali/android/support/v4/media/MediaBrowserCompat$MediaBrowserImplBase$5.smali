.class  Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.field final synthetic val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.field final synthetic val$extra:Landroid/os/Bundle;
.field final synthetic val$root:Ljava/lang/String;
.field final synthetic val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
.registers 6
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$root:Ljava/lang/String;
iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;
iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$extra:Landroid/os/Bundle;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
const-string v5, "onConnect"
#calls: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z
invoke-static {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_d
:goto_c
:cond_c
return-void
:cond_d
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
#getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I
move-result v3
const/4 v4, 0x1
if-eq v3, v4, :cond_3f
const-string v3, "MediaBrowserCompat"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "onConnect from service while mState="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
#getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
invoke-static {v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I
move-result v5
#calls: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;
invoke-static {v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$700(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "... ignoring"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_c
:cond_3f
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$root:Ljava/lang/String;
#setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;
invoke-static {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$802(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Ljava/lang/String;)Ljava/lang/String;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;
#setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
invoke-static {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$902(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$extra:Landroid/os/Bundle;
#setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;
invoke-static {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1002(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Bundle;)Landroid/os/Bundle;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
const/4 v4, 0x2
#setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
invoke-static {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$602(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;I)I
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
#getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
#getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;
invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1100(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/util/ArrayMap;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_71
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
:try_start_7d
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
#getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompat;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
#getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
invoke-static {v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
move-result-object v4
invoke-interface {v3, v2, v4}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
:try_end_8c
.catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_8c} :catch_8d
goto :goto_71
:catch_8d
move-exception v0
const-string v3, "MediaBrowserCompat"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "addSubscription failed with RemoteException parentId="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_71
.end method