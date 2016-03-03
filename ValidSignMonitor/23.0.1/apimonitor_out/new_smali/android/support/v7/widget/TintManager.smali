.class public final Landroid/support/v7/widget/TintManager;
.super Ljava/lang/Object;
.source "TintManager.java"
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I = null
.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I = null
.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I = null
.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/TintManager$ColorFilterLruCache; = null
.field private static final DEBUG:Z = false
.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode; = null
.field private static final INSTANCE_CACHE:Ljava/util/WeakHashMap; = null
.field public static final SHOULD_BE_USED:Z = false
.field private static final TAG:Ljava/lang/String; = "TintManager"
.field private static final TINT_CHECKABLE_BUTTON_LIST:[I
.field private static final TINT_COLOR_CONTROL_NORMAL:[I
.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I
.field private final mContextRef:Ljava/lang/ref/WeakReference;
.field private mDefaultColorStateList:Landroid/content/res/ColorStateList;
.field private mTintLists:Landroid/util/SparseArray;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v1, 0x1
const/4 v2, 0x0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x15
if-ge v0, v3, :cond_d8
move v0, v1
:goto_c
sput-boolean v0, Landroid/support/v7/widget/TintManager;->SHOULD_BE_USED:Z
sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
sput-object v0, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
sput-object v0, Landroid/support/v7/widget/TintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;
new-instance v0, Landroid/support/v7/widget/TintManager$ColorFilterLruCache;
const/4 v3, 0x6
invoke-direct {v0, v3}, Landroid/support/v7/widget/TintManager$ColorFilterLruCache;-><init>(I)V
sput-object v0, Landroid/support/v7/widget/TintManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/TintManager$ColorFilterLruCache;
new-array v0, v6, [I
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I
aput v3, v0, v2
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I
aput v3, v0, v1
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I
aput v3, v0, v5
sput-object v0, Landroid/support/v7/widget/TintManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I
const/16 v0, 0xc
new-array v0, v0, [I
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I
aput v3, v0, v2
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_go_search_api_mtrl_alpha:I
aput v3, v0, v1
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_search_api_mtrl_alpha:I
aput v3, v0, v5
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I
aput v3, v0, v6
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_clear_mtrl_alpha:I
aput v3, v0, v7
const/4 v3, 0x5
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I
aput v4, v0, v3
const/4 v3, 0x6
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I
aput v4, v0, v3
const/4 v3, 0x7
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I
aput v4, v0, v3
const/16 v3, 0x8
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I
aput v4, v0, v3
const/16 v3, 0x9
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I
aput v4, v0, v3
const/16 v3, 0xa
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_moreoverflow_mtrl_alpha:I
aput v4, v0, v3
const/16 v3, 0xb
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_voice_search_api_mtrl_alpha:I
aput v4, v0, v3
sput-object v0, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I
new-array v0, v7, [I
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I
aput v3, v0, v2
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I
aput v3, v0, v1
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I
aput v3, v0, v5
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_material:I
aput v3, v0, v6
sput-object v0, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I
new-array v0, v6, [I
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I
aput v3, v0, v2
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I
aput v3, v0, v1
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I
aput v3, v0, v5
sput-object v0, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I
const/16 v0, 0xa
new-array v0, v0, [I
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I
aput v3, v0, v2
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I
aput v3, v0, v1
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I
aput v3, v0, v5
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I
aput v3, v0, v6
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I
aput v3, v0, v7
const/4 v3, 0x5
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_full_material:I
aput v4, v0, v3
const/4 v3, 0x6
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I
aput v4, v0, v3
const/4 v3, 0x7
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I
aput v4, v0, v3
const/16 v3, 0x8
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I
aput v4, v0, v3
const/16 v3, 0x9
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I
aput v4, v0, v3
sput-object v0, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I
new-array v0, v5, [I
sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I
aput v3, v0, v2
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I
aput v2, v0, v1
sput-object v0, Landroid/support/v7/widget/TintManager;->TINT_CHECKABLE_BUTTON_LIST:[I
return-void
:cond_d8
move v0, v2
goto/16 :goto_c
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Landroid/support/v7/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;
return-void
.end method
.method private static arrayContains([II)Z
.registers 7
move-object v0, p0
array-length v3, v0
const/4 v1, 0x0
:goto_3
if-ge v1, v3, :cond_e
aget v2, v0, v1
if-ne v2, p1, :cond_b
const/4 v4, 0x1
:goto_a
return v4
:cond_b
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_e
const/4 v4, 0x0
goto :goto_a
.end method
.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
.registers 9
const/4 v5, 0x4
new-array v4, v5, [[I
new-array v2, v5, [I
const/4 v3, 0x0
invoke-static {p1, p2}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v0
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v5, v4, v3
sget v5, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I
move-result v5
aput v5, v2, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I
aput-object v5, v4, v3
invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I
move-result v5
aput v5, v2, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I
aput-object v5, v4, v3
invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I
move-result v5
aput v5, v2, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v5, v4, v3
aput v0, v2, v3
add-int/lit8 v3, v3, 0x1
new-instance v5, Landroid/content/res/ColorStateList;
invoke-direct {v5, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
return-object v5
.end method
.method private createCheckableButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 6
const/4 v3, 0x3
new-array v2, v3, [[I
new-array v0, v3, [I
const/4 v1, 0x0
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
new-instance v3, Landroid/content/res/ColorStateList;
invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
return-object v3
.end method
.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 3
sget v0, Landroid/support/v7/appcompat/R$attr;->colorAccent:I
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/TintManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method
.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 3
sget v0, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/TintManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method
.method private createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 6
const/4 v3, 0x3
new-array v2, v3, [[I
new-array v0, v3, [I
const/4 v1, 0x0
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
new-instance v3, Landroid/content/res/ColorStateList;
invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
return-object v3
.end method
.method private createSeekbarThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 6
const/4 v3, 0x2
new-array v2, v3, [[I
new-array v0, v3, [I
const/4 v1, 0x0
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
new-instance v3, Landroid/content/res/ColorStateList;
invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
return-object v3
.end method
.method private createSpinnerColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 6
const/4 v3, 0x3
new-array v2, v3, [[I
new-array v0, v3, [I
const/4 v1, 0x0
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
new-instance v3, Landroid/content/res/ColorStateList;
invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
return-object v3
.end method
.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 8
const/4 v4, 0x3
new-array v2, v4, [[I
new-array v0, v4, [I
const/4 v1, 0x0
sget v4, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I
invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v3
if-eqz v3, :cond_43
invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z
move-result v4
if-eqz v4, :cond_43
sget-object v4, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v4, v2, v1
aget-object v4, v2, v1
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I
move-result v4
aput v4, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v4, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I
aput-object v4, v2, v1
sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v4
aput v4, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v4, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v4, v2, v1
invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I
move-result v4
aput v4, v0, v1
add-int/lit8 v1, v1, 0x1
:goto_3d
new-instance v4, Landroid/content/res/ColorStateList;
invoke-direct {v4, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
return-object v4
:cond_43
sget-object v4, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v4, v2, v1
sget v4, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I
invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I
move-result v4
aput v4, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v4, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I
aput-object v4, v2, v1
sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v4
aput v4, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v4, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v4, v2, v1
sget v4, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I
invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v4
aput v4, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_3d
.end method
.method private createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 8
const v5, 0x1010030
const/4 v3, 0x3
const v4, 0x3e99999a
new-array v2, v3, [[I
new-array v0, v3, [I
const/4 v1, 0x0
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v3, v2, v1
const v3, 0x3dcccccd
invoke-static {p1, v5, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I
aput-object v3, v2, v1
sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v3, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v3, v2, v1
invoke-static {p1, v5, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I
move-result v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
new-instance v3, Landroid/content/res/ColorStateList;
invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
return-object v3
.end method
.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
.registers 5
if-eqz p0, :cond_4
if-nez p1, :cond_6
:cond_4
const/4 v1, 0x0
:goto_5
return-object v1
:cond_6
const/4 v1, 0x0
invoke-virtual {p0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I
move-result v0
invoke-static {v0, p1}, Landroid/support/v7/widget/TintManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v1
goto :goto_5
.end method
.method public static get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;
.registers 3
sget-object v1, Landroid/support/v7/widget/TintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;
invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/TintManager;
if-nez v0, :cond_14
new-instance v0, Landroid/support/v7/widget/TintManager;
invoke-direct {v0, p0}, Landroid/support/v7/widget/TintManager;-><init>(Landroid/content/Context;)V
sget-object v1, Landroid/support/v7/widget/TintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;
invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_14
return-object v0
.end method
.method private getDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 9
const/4 v6, 0x7
iget-object v5, p0, Landroid/support/v7/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;
if-nez v5, :cond_5b
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v1
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v0
new-array v4, v6, [[I
new-array v2, v6, [I
const/4 v3, 0x0
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v5, v4, v3
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I
move-result v5
aput v5, v2, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I
aput-object v5, v4, v3
aput v0, v2, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->ACTIVATED_STATE_SET:[I
aput-object v5, v4, v3
aput v0, v2, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I
aput-object v5, v4, v3
aput v0, v2, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I
aput-object v5, v4, v3
aput v0, v2, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->SELECTED_STATE_SET:[I
aput-object v5, v4, v3
aput v0, v2, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v5, v4, v3
aput v1, v2, v3
add-int/lit8 v3, v3, 0x1
new-instance v5, Landroid/content/res/ColorStateList;
invoke-direct {v5, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
iput-object v5, p0, Landroid/support/v7/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;
:cond_5b
iget-object v5, p0, Landroid/support/v7/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;
return-object v5
.end method
.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
.registers 3
invoke-static {p1}, Landroid/support/v7/widget/TintManager;->isInTintList(I)Z
move-result v0
if-eqz v0, :cond_f
invoke-static {p0}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_e
.end method
.method private static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
.registers 4
sget-object v1, Landroid/support/v7/widget/TintManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/TintManager$ColorFilterLruCache;
invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/TintManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v0
if-nez v0, :cond_12
new-instance v0, Landroid/graphics/PorterDuffColorFilter;
invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
sget-object v1, Landroid/support/v7/widget/TintManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/TintManager$ColorFilterLruCache;
invoke-virtual {v1, p0, p1, v0}, Landroid/support/v7/widget/TintManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
:cond_12
return-object v0
.end method
.method private static isInTintList(I)Z
.registers 2
sget-object v0, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I
invoke-static {v0, p0}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v0
if-nez v0, :cond_34
sget-object v0, Landroid/support/v7/widget/TintManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I
invoke-static {v0, p0}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v0
if-nez v0, :cond_34
sget-object v0, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I
invoke-static {v0, p0}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v0
if-nez v0, :cond_34
sget-object v0, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I
invoke-static {v0, p0}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v0
if-nez v0, :cond_34
sget-object v0, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I
invoke-static {v0, p0}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v0
if-nez v0, :cond_34
sget-object v0, Landroid/support/v7/widget/TintManager;->TINT_CHECKABLE_BUTTON_LIST:[I
invoke-static {v0, p0}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v0
if-nez v0, :cond_34
sget v0, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I
if-ne p0, v0, :cond_36
:cond_34
const/4 v0, 0x1
:goto_35
return v0
:cond_36
const/4 v0, 0x0
goto :goto_35
.end method
.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
.registers 4
if-nez p2, :cond_4
sget-object p2, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
:cond_4
invoke-static {p1, p2}, Landroid/support/v7/widget/TintManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
.method private static shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z
.registers 11
const/16 v9, 0x10
const/4 v7, 0x0
const/4 v6, 0x1
sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v8, v9, :cond_9
:goto_8
:cond_8
return v6
:cond_9
instance-of v8, p0, Landroid/graphics/drawable/LayerDrawable;
if-eqz v8, :cond_13
sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
if-ge v8, v9, :cond_8
move v6, v7
goto :goto_8
:cond_13
instance-of v8, p0, Landroid/graphics/drawable/InsetDrawable;
if-eqz v8, :cond_1f
sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v9, 0xe
if-ge v8, v9, :cond_8
move v6, v7
goto :goto_8
:cond_1f
instance-of v8, p0, Landroid/graphics/drawable/DrawableContainer;
if-eqz v8, :cond_8
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v5
instance-of v8, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
if-eqz v8, :cond_8
move-object v2, v5
check-cast v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;
move-result-object v0
array-length v4, v0
const/4 v3, 0x0
:goto_34
if-ge v3, v4, :cond_8
aget-object v1, v0, v3
invoke-static {v1}, Landroid/support/v7/widget/TintManager;->shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z
move-result v8
if-nez v8, :cond_40
move v6, v7
goto :goto_8
:cond_40
add-int/lit8 v3, v3, 0x1
goto :goto_34
.end method
.method public static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
.registers 5
invoke-static {p0}, Landroid/support/v7/widget/TintManager;->shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eq v0, p0, :cond_14
const-string v0, "TintManager"
const-string v1, "Mutated drawable is not the same instance as the input."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_13
:goto_13
return-void
:cond_14
iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
if-nez v0, :cond_1c
iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z
if-eqz v0, :cond_3e
:cond_1c
iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
if-eqz v0, :cond_39
iget-object v0, p1, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;
:goto_22
iget-boolean v1, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z
if-eqz v1, :cond_3b
iget-object v1, p1, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;
:goto_28
invoke-static {v0, v1, p2}, Landroid/support/v7/widget/TintManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
:goto_2f
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xa
if-gt v0, v1, :cond_13
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
goto :goto_13
:cond_39
const/4 v0, 0x0
goto :goto_22
:cond_3b
sget-object v1, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
goto :goto_28
:cond_3e
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V
goto :goto_2f
.end method
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/TintManager;->getDrawable(IZ)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getDrawable(IZ)Landroid/graphics/drawable/Drawable;
.registers 12
iget-object v6, p0, Landroid/support/v7/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-nez v0, :cond_c
const/4 v1, 0x0
:goto_b
:cond_b
return-object v1
:cond_c
invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_b
sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v7, 0x8
if-lt v6, v7, :cond_1c
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v1
:cond_1c
invoke-virtual {p0, p1}, Landroid/support/v7/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;
move-result-object v3
if-eqz v3, :cond_33
invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-static {v1, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
invoke-virtual {p0, p1}, Landroid/support/v7/widget/TintManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;
move-result-object v4
if-eqz v4, :cond_b
invoke-static {v1, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
goto :goto_b
:cond_33
sget v6, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I
if-ne p1, v6, :cond_52
new-instance v1, Landroid/graphics/drawable/LayerDrawable;
const/4 v6, 0x2
new-array v6, v6, [Landroid/graphics/drawable/Drawable;
const/4 v7, 0x0
sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I
invoke-virtual {p0, v8}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v8
aput-object v8, v6, v7
const/4 v7, 0x1
sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I
invoke-virtual {p0, v8}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v8
aput-object v8, v6, v7
invoke-direct {v1, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
goto :goto_b
:cond_52
sget v6, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I
if-ne p1, v6, :cond_90
move-object v2, v1
check-cast v2, Landroid/graphics/drawable/LayerDrawable;
const/high16 v6, 0x102
invoke-virtual {v2, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v6
sget v7, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {v0, v7}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v7
sget-object v8, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v6, v7, v8}, Landroid/support/v7/widget/TintManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
const v6, 0x102000f
invoke-virtual {v2, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v6
sget v7, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {v0, v7}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v7
sget-object v8, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v6, v7, v8}, Landroid/support/v7/widget/TintManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
const v6, 0x102000d
invoke-virtual {v2, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v6
sget v7, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {v0, v7}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v7
sget-object v8, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v6, v7, v8}, Landroid/support/v7/widget/TintManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
goto/16 :goto_b
:cond_90
invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/TintManager;->tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z
move-result v5
if-nez v5, :cond_b
if-eqz p2, :cond_b
const/4 v1, 0x0
goto/16 :goto_b
.end method
.method public final getTintList(I)Landroid/content/res/ColorStateList;
.registers 5
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-nez v0, :cond_c
:cond_b
:goto_b
return-object v1
:cond_c
iget-object v2, p0, Landroid/support/v7/widget/TintManager;->mTintLists:Landroid/util/SparseArray;
if-eqz v2, :cond_19
iget-object v2, p0, Landroid/support/v7/widget/TintManager;->mTintLists:Landroid/util/SparseArray;
invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/content/res/ColorStateList;
move-object v1, v2
:cond_19
if-nez v1, :cond_b
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I
if-ne p1, v2, :cond_36
invoke-direct {p0, v0}, Landroid/support/v7/widget/TintManager;->createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v1
:goto_23
:cond_23
if-eqz v1, :cond_b
iget-object v2, p0, Landroid/support/v7/widget/TintManager;->mTintLists:Landroid/util/SparseArray;
if-nez v2, :cond_30
new-instance v2, Landroid/util/SparseArray;
invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V
iput-object v2, p0, Landroid/support/v7/widget/TintManager;->mTintLists:Landroid/util/SparseArray;
:cond_30
iget-object v2, p0, Landroid/support/v7/widget/TintManager;->mTintLists:Landroid/util/SparseArray;
invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
goto :goto_b
:cond_36
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I
if-ne p1, v2, :cond_3f
invoke-direct {p0, v0}, Landroid/support/v7/widget/TintManager;->createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v1
goto :goto_23
:cond_3f
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I
if-ne p1, v2, :cond_48
invoke-direct {p0, v0}, Landroid/support/v7/widget/TintManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v1
goto :goto_23
:cond_48
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I
if-eq p1, v2, :cond_50
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I
if-ne p1, v2, :cond_55
:cond_50
invoke-direct {p0, v0}, Landroid/support/v7/widget/TintManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v1
goto :goto_23
:cond_55
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I
if-ne p1, v2, :cond_5e
invoke-direct {p0, v0}, Landroid/support/v7/widget/TintManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v1
goto :goto_23
:cond_5e
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I
if-eq p1, v2, :cond_66
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I
if-ne p1, v2, :cond_6b
:cond_66
invoke-direct {p0, v0}, Landroid/support/v7/widget/TintManager;->createSpinnerColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v1
goto :goto_23
:cond_6b
sget-object v2, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I
invoke-static {v2, p1}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v2
if-eqz v2, :cond_7a
sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {v0, v2}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v1
goto :goto_23
:cond_7a
sget-object v2, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I
invoke-static {v2, p1}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v2
if-eqz v2, :cond_87
invoke-direct {p0, v0}, Landroid/support/v7/widget/TintManager;->getDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v1
goto :goto_23
:cond_87
sget-object v2, Landroid/support/v7/widget/TintManager;->TINT_CHECKABLE_BUTTON_LIST:[I
invoke-static {v2, p1}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v2
if-eqz v2, :cond_94
invoke-direct {p0, v0}, Landroid/support/v7/widget/TintManager;->createCheckableButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v1
goto :goto_23
:cond_94
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I
if-ne p1, v2, :cond_23
invoke-direct {p0, v0}, Landroid/support/v7/widget/TintManager;->createSeekbarThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v1
goto :goto_23
.end method
.method final getTintMode(I)Landroid/graphics/PorterDuff$Mode;
.registers 4
const/4 v0, 0x0
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I
if-ne p1, v1, :cond_7
sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
:cond_7
return-object v0
.end method
.method public final tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z
.registers 11
const/4 v6, 0x0
iget-object v7, p0, Landroid/support/v7/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/content/Context;
if-nez v4, :cond_c
:goto_b
:cond_b
return v6
:cond_c
sget-object v5, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
const/4 v3, 0x0
const/4 v2, 0x0
const/4 v0, -0x1
sget-object v7, Landroid/support/v7/widget/TintManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I
invoke-static {v7, p1}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v7
if-eqz v7, :cond_31
sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
const/4 v3, 0x1
:goto_1c
:cond_1c
if-eqz v3, :cond_b
invoke-static {v4, v2}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v1
invoke-static {v1, v5}, Landroid/support/v7/widget/TintManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v6
invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
const/4 v6, -0x1
if-eq v0, v6, :cond_2f
invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_2f
const/4 v6, 0x1
goto :goto_b
:cond_31
sget-object v7, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I
invoke-static {v7, p1}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v7
if-eqz v7, :cond_3d
sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
const/4 v3, 0x1
goto :goto_1c
:cond_3d
sget-object v7, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I
invoke-static {v7, p1}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z
move-result v7
if-eqz v7, :cond_4c
const v2, 0x1010031
const/4 v3, 0x1
sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
goto :goto_1c
:cond_4c
sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I
if-ne p1, v7, :cond_1c
const v2, 0x1010030
const/4 v3, 0x1
const v7, 0x42233333
invoke-static {v7}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_1c
.end method