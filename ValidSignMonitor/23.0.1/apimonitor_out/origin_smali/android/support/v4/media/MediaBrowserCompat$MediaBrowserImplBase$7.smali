.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onLoadChildren(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final synthetic val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/util/List;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$list:Ljava/util/List;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$parentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    const-string v4, "onLoadChildren"

    #calls: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$list:Ljava/util/List;

    if-nez v0, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_15
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    #getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1100(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$parentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;

    if-eqz v1, :cond_c

    iget-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;->callback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$parentId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_c
.end method
