.class  Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
.field final synthetic val$mediaId:Ljava/lang/String;
.field final synthetic val$receiver:Landroid/support/v4/os/ResultReceiver;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
.registers 4
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->val$mediaId:Ljava/lang/String;
iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->val$receiver:Landroid/support/v4/os/ResultReceiver;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->val$mediaId:Ljava/lang/String;
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->val$receiver:Landroid/support/v4/os/ResultReceiver;
#calls: Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$500(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
return-void
.end method