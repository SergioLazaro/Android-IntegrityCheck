.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$RouteCategory;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getName(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
.registers 3
check-cast p0, Landroid/media/MediaRouter$RouteCategory;
invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public static getRoutes(Ljava/lang/Object;)Ljava/util/List;
.registers 2
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
check-cast p0, Landroid/media/MediaRouter$RouteCategory;
invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteCategory;->getRoutes(Ljava/util/List;)Ljava/util/List;
return-object v0
.end method
.method public static getSupportedTypes(Ljava/lang/Object;)I
.registers 2
check-cast p0, Landroid/media/MediaRouter$RouteCategory;
invoke-virtual {p0}, Landroid/media/MediaRouter$RouteCategory;->getSupportedTypes()I
move-result v0
return v0
.end method
.method public static isGroupable(Ljava/lang/Object;)Z
.registers 2
check-cast p0, Landroid/media/MediaRouter$RouteCategory;
invoke-virtual {p0}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z
move-result v0
return v0
.end method