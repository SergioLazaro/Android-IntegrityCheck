.class public Landroid/support/v4/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;
.source "DrawableCompat.java"
.field static final IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x17
if-lt v0, v1, :cond_e
new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;
invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;-><init>()V
sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
:goto_d
return-void
:cond_e
const/16 v1, 0x16
if-lt v0, v1, :cond_1a
new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;
invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;-><init>()V
sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
goto :goto_d
:cond_1a
const/16 v1, 0x15
if-lt v0, v1, :cond_26
new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;
invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;-><init>()V
sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
goto :goto_d
:cond_26
const/16 v1, 0x13
if-lt v0, v1, :cond_32
new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;
invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;-><init>()V
sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
goto :goto_d
:cond_32
const/16 v1, 0x11
if-lt v0, v1, :cond_3e
new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;
invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;-><init>()V
sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
goto :goto_d
:cond_3e
const/16 v1, 0xb
if-lt v0, v1, :cond_4a
new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;
invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V
sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
goto :goto_d
:cond_4a
new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;
invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;-><init>()V
sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
goto :goto_d
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
.registers 2
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
move-result v0
return v0
.end method
.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
.registers 2
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
move-result v0
return v0
.end method
.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
.registers 2
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
.registers 3
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
return-void
.end method
.method public static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
.registers 4
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V
return-void
.end method
.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
.registers 11
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
move-object v1, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-interface/range {v0 .. v5}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
return-void
.end method
.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
.registers 3
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
return-void
.end method
.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
.registers 3
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setTint(Landroid/graphics/drawable/Drawable;I)V
return-void
.end method
.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
.registers 3
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
return-void
.end method
.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
.registers 3
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
return-void
.end method
.method public static unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.registers 2
instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;
if-eqz v0, :cond_a
check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;
invoke-interface {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;
move-result-object p0
:cond_a
return-object p0
.end method
.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.registers 2
sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method