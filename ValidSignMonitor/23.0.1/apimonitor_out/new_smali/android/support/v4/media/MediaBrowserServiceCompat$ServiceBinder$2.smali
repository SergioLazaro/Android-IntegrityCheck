.class  Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
.field final synthetic val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
invoke-interface {v2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
#getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
invoke-static {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
if-eqz v1, :cond_16
:cond_16
return-void
.end method