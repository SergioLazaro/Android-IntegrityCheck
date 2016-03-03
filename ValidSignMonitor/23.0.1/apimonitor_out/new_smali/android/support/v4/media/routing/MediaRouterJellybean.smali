.class  Landroid/support/v4/media/routing/MediaRouterJellybean;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"
.field public static final ALL_ROUTE_TYPES:I = 0x800003
.field public static final ROUTE_TYPE_LIVE_AUDIO:I = 0x1
.field public static final ROUTE_TYPE_LIVE_VIDEO:I = 0x2
.field public static final ROUTE_TYPE_USER:I = 0x800000
.field private static final TAG:Ljava/lang/String; = "MediaRouterJellybean"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static addCallback(Ljava/lang/Object;ILjava/lang/Object;)V
.registers 3
check-cast p0, Landroid/media/MediaRouter;
check-cast p2, Landroid/media/MediaRouter$Callback;
invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V
return-void
.end method
.method public static addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 2
check-cast p0, Landroid/media/MediaRouter;
check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;
invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
return-void
.end method
.method public static createCallback(Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;)Ljava/lang/Object;
.registers 2
new-instance v0, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;
invoke-direct {v0, p0}, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;-><init>(Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;)V
return-object v0
.end method
.method public static createRouteCategory(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
.registers 4
check-cast p0, Landroid/media/MediaRouter;
invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;
move-result-object v0
return-object v0
.end method
.method public static createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p0, Landroid/media/MediaRouter;
check-cast p1, Landroid/media/MediaRouter$RouteCategory;
invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;
move-result-object v0
return-object v0
.end method
.method public static createVolumeCallback(Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;)Ljava/lang/Object;
.registers 2
new-instance v0, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;
invoke-direct {v0, p0}, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;-><init>(Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;)V
return-object v0
.end method
.method public static getCategories(Ljava/lang/Object;)Ljava/util/List;
.registers 6
move-object v3, p0
check-cast v3, Landroid/media/MediaRouter;
invoke-virtual {v3}, Landroid/media/MediaRouter;->getCategoryCount()I
move-result v0
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v1, 0x0
:goto_d
if-ge v1, v0, :cond_19
invoke-virtual {v3, v1}, Landroid/media/MediaRouter;->getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;
move-result-object v4
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_d
:cond_19
return-object v2
.end method
.method public static getMediaRouter(Landroid/content/Context;)Ljava/lang/Object;
.registers 2
const-string v0, "media_router"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public static getRoutes(Ljava/lang/Object;)Ljava/util/List;
.registers 6
move-object v3, p0
check-cast v3, Landroid/media/MediaRouter;
invoke-virtual {v3}, Landroid/media/MediaRouter;->getRouteCount()I
move-result v0
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v1, 0x0
:goto_d
if-ge v1, v0, :cond_19
invoke-virtual {v3, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
move-result-object v4
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_d
:cond_19
return-object v2
.end method
.method public static getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;
.registers 3
check-cast p0, Landroid/media/MediaRouter;
invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;
move-result-object v0
return-object v0
.end method
.method public static removeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 2
check-cast p0, Landroid/media/MediaRouter;
check-cast p1, Landroid/media/MediaRouter$Callback;
invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V
return-void
.end method
.method public static removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 2
check-cast p0, Landroid/media/MediaRouter;
check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;
invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
return-void
.end method
.method public static selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
.registers 3
check-cast p0, Landroid/media/MediaRouter;
check-cast p2, Landroid/media/MediaRouter$RouteInfo;
invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V
return-void
.end method