.class  Landroid/support/v7/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"
.field static final ACTIVATED_STATE_SET:[I
.field static final CHECKED_STATE_SET:[I
.field static final DISABLED_STATE_SET:[I
.field static final EMPTY_STATE_SET:[I
.field static final FOCUSED_STATE_SET:[I
.field static final NOT_PRESSED_OR_FOCUSED_STATE_SET:[I
.field static final PRESSED_STATE_SET:[I
.field static final SELECTED_STATE_SET:[I
.field private static final TEMP_ARRAY:[I
.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Ljava/lang/ThreadLocal;
invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V
sput-object v0, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
new-array v0, v3, [I
const v1, -0x101009e
aput v1, v0, v2
sput-object v0, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
new-array v0, v3, [I
const v1, 0x101009c
aput v1, v0, v2
sput-object v0, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I
new-array v0, v3, [I
const v1, 0x10102fe
aput v1, v0, v2
sput-object v0, Landroid/support/v7/widget/ThemeUtils;->ACTIVATED_STATE_SET:[I
new-array v0, v3, [I
const v1, 0x10100a7
aput v1, v0, v2
sput-object v0, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I
new-array v0, v3, [I
const v1, 0x10100a0
aput v1, v0, v2
sput-object v0, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I
new-array v0, v3, [I
const v1, 0x10100a1
aput v1, v0, v2
sput-object v0, Landroid/support/v7/widget/ThemeUtils;->SELECTED_STATE_SET:[I
const/4 v0, 0x2
new-array v0, v0, [I
fill-array-data v0, :array_50
sput-object v0, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I
new-array v0, v2, [I
sput-object v0, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
new-array v0, v3, [I
sput-object v0, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I
return-void
:array_50
.array-data 0x4
0x59t 0xfft 0xfet 0xfet
0x64t 0xfft 0xfet 0xfet
.end array-data
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createDisabledStateList(II)Landroid/content/res/ColorStateList;
.registers 6
const/4 v3, 0x2
new-array v2, v3, [[I
new-array v0, v3, [I
const/4 v1, 0x0
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v3, v2, v1
aput p1, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v3, v2, v1
aput p0, v0, v1
add-int/lit8 v1, v1, 0x1
new-instance v3, Landroid/content/res/ColorStateList;
invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
return-object v3
.end method
.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
.registers 8
invoke-static {p0, p1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z
move-result v3
if-eqz v3, :cond_17
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I
move-result v4
invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I
move-result v3
:goto_16
return v3
:cond_17
invoke-static {}, Landroid/support/v7/widget/ThemeUtils;->getTypedValue()Landroid/util/TypedValue;
move-result-object v2
invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v3
const v4, 0x1010033
const/4 v5, 0x1
invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F
move-result v1
invoke-static {p0, p1, v1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I
move-result v3
goto :goto_16
.end method
.method public static getThemeAttrColor(Landroid/content/Context;I)I
.registers 5
const/4 v2, 0x0
sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I
aput p1, v1, v2
const/4 v1, 0x0
sget-object v2, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x0
:try_start_e
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I
:try_end_11
.catchall {:try_start_e .. :try_end_11} :catchall_16
move-result v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return v1
:catchall_16
move-exception v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
throw v1
.end method
.method static getThemeAttrColor(Landroid/content/Context;IF)I
.registers 6
invoke-static {p0, p1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v0
invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I
move-result v1
int-to-float v2, v1
mul-float/2addr v2, p2
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
invoke-static {v0, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I
move-result v2
return v2
.end method
.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
.registers 5
const/4 v2, 0x0
sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I
aput p1, v1, v2
const/4 v1, 0x0
sget-object v2, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x0
:try_start_d
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
:try_end_10
.catchall {:try_start_d .. :try_end_10} :catchall_15
move-result-object v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-object v1
:catchall_15
move-exception v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
throw v1
.end method
.method private static getTypedValue()Landroid/util/TypedValue;
.registers 2
sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/util/TypedValue;
if-nez v0, :cond_14
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
:cond_14
return-object v0
.end method