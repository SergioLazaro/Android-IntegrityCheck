.class public Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa
.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static HSLToColor([F)I
.registers 14
.parameter
.end parameter
const/4 v10, 0x0
aget v3, p0, v10
const/4 v10, 0x1
aget v8, p0, v10
const/4 v10, 0x2
aget v5, p0, v10
const/high16 v10, 0x3f80
const/high16 v11, 0x4000
mul-float/2addr v11, v5
const/high16 v12, 0x3f80
sub-float/2addr v11, v12
invoke-static {v11}, Ljava/lang/Math;->abs(F)F
move-result v11
sub-float/2addr v10, v11
mul-float v1, v10, v8
const/high16 v10, 0x3f00
mul-float/2addr v10, v1
sub-float v6, v5, v10
const/high16 v10, 0x3f80
const/high16 v11, 0x4270
div-float v11, v3, v11
const/high16 v12, 0x4000
rem-float/2addr v11, v12
const/high16 v12, 0x3f80
sub-float/2addr v11, v12
invoke-static {v11}, Ljava/lang/Math;->abs(F)F
move-result v11
sub-float/2addr v10, v11
mul-float v9, v1, v10
float-to-int v10, v3
div-int/lit8 v4, v10, 0x3c
const/4 v7, 0x0
const/4 v2, 0x0
const/4 v0, 0x0
packed-switch v4, :pswitch_data_f2
:goto_39
const/4 v10, 0x0
const/16 v11, 0xff
invoke-static {v7, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I
move-result v7
const/4 v10, 0x0
const/16 v11, 0xff
invoke-static {v2, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I
move-result v2
const/4 v10, 0x0
const/16 v11, 0xff
invoke-static {v0, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I
move-result v0
invoke-static {v7, v2, v0}, Landroid/graphics/Color;->rgb(III)I
move-result v10
return v10
:pswitch_53
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_39
:pswitch_6d
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_39
:pswitch_87
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_39
:pswitch_a1
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto/16 :goto_39
:pswitch_bc
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto/16 :goto_39
:pswitch_d7
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto/16 :goto_39
:pswitch_data_f2
.packed-switch 0x0
:pswitch_53
:pswitch_6d
:pswitch_87
:pswitch_a1
:pswitch_bc
:pswitch_d7
:pswitch_d7
.end packed-switch
.end method
.method public static RGBToHSL(III[F)V
.registers 16
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
int-to-float v9, p0
const/high16 v10, 0x437f
div-float v7, v9, v10
int-to-float v9, p1
const/high16 v10, 0x437f
div-float v2, v9, v10
int-to-float v9, p2
const/high16 v10, 0x437f
div-float v0, v9, v10
invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F
move-result v9
invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F
move-result v5
invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F
move-result v9
invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F
move-result v6
sub-float v1, v5, v6
add-float v9, v5, v6
const/high16 v10, 0x4000
div-float v4, v9, v10
cmpl-float v9, v5, v6
if-nez v9, :cond_5b
const/4 v8, 0x0
move v3, v8
:goto_2d
const/high16 v9, 0x4270
mul-float/2addr v9, v3
const/high16 v10, 0x43b4
rem-float v3, v9, v10
const/4 v9, 0x0
cmpg-float v9, v3, v9
if-gez v9, :cond_3c
const/high16 v9, 0x43b4
add-float/2addr v3, v9
:cond_3c
const/4 v9, 0x0
const/4 v10, 0x0
const/high16 v11, 0x43b4
invoke-static {v3, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F
move-result v10
aput v10, p3, v9
const/4 v9, 0x1
const/4 v10, 0x0
const/high16 v11, 0x3f80
invoke-static {v8, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F
move-result v10
aput v10, p3, v9
const/4 v9, 0x2
const/4 v10, 0x0
const/high16 v11, 0x3f80
invoke-static {v4, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F
move-result v10
aput v10, p3, v9
return-void
:cond_5b
cmpl-float v9, v5, v7
if-nez v9, :cond_76
sub-float v9, v2, v0
div-float/2addr v9, v1
const/high16 v10, 0x40c0
rem-float v3, v9, v10
:goto_66
const/high16 v9, 0x3f80
const/high16 v10, 0x4000
mul-float/2addr v10, v4
const/high16 v11, 0x3f80
sub-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->abs(F)F
move-result v10
sub-float/2addr v9, v10
div-float v8, v1, v9
goto :goto_2d
:cond_76
cmpl-float v9, v5, v2
if-nez v9, :cond_82
sub-float v9, v0, v7
div-float/2addr v9, v1
const/high16 v10, 0x4000
add-float v3, v9, v10
goto :goto_66
:cond_82
sub-float v9, v7, v2
div-float/2addr v9, v1
const/high16 v10, 0x4080
add-float v3, v9, v10
goto :goto_66
.end method
.method public static calculateContrast(II)D
.registers 10
.parameter
.end parameter
.parameter
.end parameter
const/16 v5, 0xff
const-wide v6, 0x3fa999999999999aL
invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I
move-result v4
if-eq v4, v5, :cond_2a
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "background can not be translucent: #"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_2a
invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I
move-result v4
if-ge v4, v5, :cond_34
invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I
move-result p0
:cond_34
invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D
move-result-wide v4
add-double v0, v4, v6
invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D
move-result-wide v4
add-double v2, v4, v6
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D
move-result-wide v4
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D
move-result-wide v6
div-double/2addr v4, v6
return-wide v4
.end method
.method public static calculateLuminance(I)D
.registers 11
.parameter
.end parameter
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v6
int-to-double v6, v6
const-wide v8, 0x406fe00000000000L
div-double v4, v6, v8
const-wide v6, 0x3fa41c8216c61523L
cmpg-double v6, v4, v6
if-gez v6, :cond_66
const-wide v6, 0x4029d70a3d70a3d7L
div-double/2addr v4, v6
:goto_1b
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v6
int-to-double v6, v6
const-wide v8, 0x406fe00000000000L
div-double v2, v6, v8
const-wide v6, 0x3fa41c8216c61523L
cmpg-double v6, v2, v6
if-gez v6, :cond_7c
const-wide v6, 0x4029d70a3d70a3d7L
div-double/2addr v2, v6
:goto_36
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v6
int-to-double v6, v6
const-wide v8, 0x406fe00000000000L
div-double v0, v6, v8
const-wide v6, 0x3fa41c8216c61523L
cmpg-double v6, v0, v6
if-gez v6, :cond_92
const-wide v6, 0x4029d70a3d70a3d7L
div-double/2addr v0, v6
:goto_51
const-wide v6, 0x3fcb367a0f9096bcL
mul-double/2addr v6, v4
const-wide v8, 0x3fe6e2eb1c432ca5L
mul-double/2addr v8, v2
add-double/2addr v6, v8
const-wide v8, 0x3fb27bb2fec56d5dL
mul-double/2addr v8, v0
add-double/2addr v6, v8
return-wide v6
:cond_66
const-wide v6, 0x3fac28f5c28f5c29L
add-double/2addr v6, v4
const-wide v8, 0x3ff0e147ae147ae1L
div-double/2addr v6, v8
const-wide v8, 0x4003333333333333L
invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D
move-result-wide v4
goto :goto_1b
:cond_7c
const-wide v6, 0x3fac28f5c28f5c29L
add-double/2addr v6, v2
const-wide v8, 0x3ff0e147ae147ae1L
div-double/2addr v6, v8
const-wide v8, 0x4003333333333333L
invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D
move-result-wide v2
goto :goto_36
:cond_92
const-wide v6, 0x3fac28f5c28f5c29L
add-double/2addr v6, v0
const-wide v8, 0x3ff0e147ae147ae1L
div-double/2addr v6, v8
const-wide v8, 0x4003333333333333L
invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D
move-result-wide v0
goto :goto_51
.end method
.method public static calculateMinimumAlpha(IIF)I
.registers 13
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/16 v8, 0xff
invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I
move-result v5
if-eq v5, v8, :cond_25
new-instance v5, Ljava/lang/IllegalArgumentException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "background can not be translucent: #"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_25
invoke-static {p0, v8}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I
move-result v4
invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D
move-result-wide v6
float-to-double v8, p2
cmpg-double v5, v6, v8
if-gez v5, :cond_34
const/4 v0, -0x1
:cond_33
return v0
:cond_34
const/4 v2, 0x0
const/4 v1, 0x0
const/16 v0, 0xff
:goto_38
const/16 v5, 0xa
if-gt v2, v5, :cond_33
sub-int v5, v0, v1
const/4 v8, 0x1
if-le v5, v8, :cond_33
add-int v5, v1, v0
div-int/lit8 v3, v5, 0x2
invoke-static {p0, v3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I
move-result v4
invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D
move-result-wide v6
float-to-double v8, p2
cmpg-double v5, v6, v8
if-gez v5, :cond_56
move v1, v3
:goto_53
add-int/lit8 v2, v2, 0x1
goto :goto_38
:cond_56
move v0, v3
goto :goto_53
.end method
.method public static colorToHSL(I[F)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v0
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v1
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v2
invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V
return-void
.end method
.method private static compositeAlpha(II)I
.registers 4
rsub-int v0, p1, 0xff
rsub-int v1, p0, 0xff
mul-int/2addr v0, v1
div-int/lit16 v0, v0, 0xff
rsub-int v0, v0, 0xff
return v0
.end method
.method public static compositeColors(II)I
.registers 10
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I
move-result v2
invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I
move-result v3
invoke-static {v3, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I
move-result v0
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v6
invoke-static {p1}, Landroid/graphics/Color;->red(I)I
move-result v7
invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I
move-result v5
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v6
invoke-static {p1}, Landroid/graphics/Color;->green(I)I
move-result v7
invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I
move-result v4
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v6
invoke-static {p1}, Landroid/graphics/Color;->blue(I)I
move-result v7
invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I
move-result v1
invoke-static {v0, v5, v4, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v6
return v6
.end method
.method private static compositeComponent(IIIII)I
.registers 8
if-nez p4, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
mul-int/lit16 v0, p0, 0xff
mul-int/2addr v0, p1
mul-int v1, p2, p3
rsub-int v2, p1, 0xff
mul-int/2addr v1, v2
add-int/2addr v0, v1
mul-int/lit16 v1, p4, 0xff
div-int/2addr v0, v1
goto :goto_3
.end method
.method private static constrain(FFF)F
.registers 4
cmpg-float v0, p0, p1
if-gez v0, :cond_5
:goto_4
return p1
:cond_5
cmpl-float v0, p0, p2
if-lez v0, :cond_b
move p1, p2
goto :goto_4
:cond_b
move p1, p0
goto :goto_4
.end method
.method private static constrain(III)I
.registers 3
if-ge p0, p1, :cond_3
:goto_2
return p1
:cond_3
if-le p0, p2, :cond_7
move p1, p2
goto :goto_2
:cond_7
move p1, p0
goto :goto_2
.end method
.method public static setAlphaComponent(II)I
.registers 4
.parameter
.end parameter
.parameter
.end parameter
if-ltz p1, :cond_6
const/16 v0, 0xff
if-le p1, v0, :cond_e
:cond_6
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "alpha must be between 0 and 255."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const v0, 0xffffff
and-int/2addr v0, p0
shl-int/lit8 v1, p1, 0x18
or-int/2addr v0, v1
return v0
.end method