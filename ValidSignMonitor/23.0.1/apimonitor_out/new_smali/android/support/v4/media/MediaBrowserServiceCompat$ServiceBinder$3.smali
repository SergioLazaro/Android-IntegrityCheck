.class  Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
.field final synthetic val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.field final synthetic val$id:Ljava/lang/String;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->val$id:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
invoke-interface {v2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
#getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
invoke-static {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
if-nez v1, :cond_31
const-string v2, "MediaBrowserServiceCompat"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "addSubscription for callback that isn\'t registered id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->val$id:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_30
return-void
:cond_31
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->val$id:Ljava/lang/String;
#calls: Landroid/support/v4/media/MediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
invoke-static {v2, v3, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$400(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
goto :goto_30
.end method