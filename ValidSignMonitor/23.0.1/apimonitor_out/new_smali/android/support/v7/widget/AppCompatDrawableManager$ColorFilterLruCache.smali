.class  Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;
.super Landroid/support/v4/util/LruCache;
.source "AppCompatDrawableManager.java"
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V
return-void
.end method
.method private static generateCacheKey(ILandroid/graphics/PorterDuff$Mode;)I
.registers 5
const/4 v0, 0x1
add-int/lit8 v0, p0, 0x1f
mul-int/lit8 v1, v0, 0x1f
invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I
move-result v2
add-int v0, v1, v2
return v0
.end method
.method  get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
.registers 4
invoke-static {p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->generateCacheKey(ILandroid/graphics/PorterDuff$Mode;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/PorterDuffColorFilter;
return-object v0
.end method
.method  put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
.registers 5
invoke-static {p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->generateCacheKey(ILandroid/graphics/PorterDuff$Mode;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p0, v0, p3}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/PorterDuffColorFilter;
return-object v0
.end method