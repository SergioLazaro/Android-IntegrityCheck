.class  Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;
.super Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;
.source "MediaRouterJellybeanMr1.java"
.method public constructor <init>(Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;-><init>(Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;)V
return-void
.end method
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;
check-cast v0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;
invoke-interface {v0, p2}, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;->onRoutePresentationDisplayChanged(Ljava/lang/Object;)V
return-void
.end method