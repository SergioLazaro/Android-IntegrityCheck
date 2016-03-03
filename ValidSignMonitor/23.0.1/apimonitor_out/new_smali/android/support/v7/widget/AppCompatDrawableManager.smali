.class public final Landroid/support/v7/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I = null
.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I = null
.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I = null
.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache; = null
.field private static final DEBUG:Z = false
.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode; = null
.field private static INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager; = null
.field private static final TAG:Ljava/lang/String; = "TintManager"
.field private static final TINT_CHECKABLE_BUTTON_LIST:[I
.field private static final TINT_COLOR_CONTROL_NORMAL:[I
.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I
.field private mDelegates:Ljava/util/ArrayList;
.field private mTintLists:Ljava/util/WeakHashMap;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;
const/4 v1, 0x6
invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;
new-array v0, v6, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I
aput v1, v0, v4
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I
aput v1, v0, v5
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I
const/16 v0, 0xc
new-array v0, v0, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_go_search_api_mtrl_alpha:I
aput v1, v0, v4
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_search_api_mtrl_alpha:I
aput v1, v0, v5
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I
aput v1, v0, v6
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_clear_mtrl_alpha:I
aput v1, v0, v7
const/4 v1, 0x5
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I
aput v2, v0, v1
const/4 v1, 0x6
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I
aput v2, v0, v1
const/4 v1, 0x7
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I
aput v2, v0, v1
const/16 v1, 0x8
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I
aput v2, v0, v1
const/16 v1, 0x9
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I
aput v2, v0, v1
const/16 v1, 0xa
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_moreoverflow_mtrl_alpha:I
aput v2, v0, v1
const/16 v1, 0xb
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_voice_search_api_mtrl_alpha:I
aput v2, v0, v1
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I
new-array v0, v7, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I
aput v1, v0, v4
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I
aput v1, v0, v5
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_material:I
aput v1, v0, v6
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I
new-array v0, v6, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I
aput v1, v0, v4
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I
aput v1, v0, v5
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I
const/16 v0, 0xa
new-array v0, v0, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I
aput v1, v0, v4
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I
aput v1, v0, v5
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I
aput v1, v0, v6
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I
aput v1, v0, v7
const/4 v1, 0x5
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_full_material:I
aput v2, v0, v1
const/4 v1, 0x6
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I
aput v2, v0, v1
const/4 v1, 0x7
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I
aput v2, v0, v1
const/16 v1, 0x8
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I
aput v2, v0, v1
const/16 v1, 0x9
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I
aput v2, v0, v1
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I
new-array v0, v5, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I
aput v1, v0, v4
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
if-nez v1, :cond_b
new-instance v1, Ljava/util/WeakHashMap;
invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V
iput-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
:cond_b
iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/util/SparseArray;
if-nez v0, :cond_1f
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1f
invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
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
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method
.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 3
sget v0, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method
.method private createDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 9
const/4 v6, 0x7
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
return-object v5
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
invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v1
goto :goto_5
.end method
.method public static get()Landroid/support/v7/widget/AppCompatDrawableManager;
.registers 1
sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager;
invoke-direct {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;-><init>()V
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;
:cond_b
sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;
return-object v0
.end method
.method private static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
.registers 4
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;
invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v0
if-nez v0, :cond_12
new-instance v0, Landroid/graphics/PorterDuffColorFilter;
invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;
invoke-virtual {v1, p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
:cond_12
return-object v0
.end method
.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
.registers 6
.parameter
.end parameter
.parameter
.end parameter
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
if-eqz v2, :cond_15
iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/util/SparseArray;
if-eqz v0, :cond_15
invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/res/ColorStateList;
:cond_15
return-object v1
.end method
.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
.registers 4
if-nez p2, :cond_4
sget-object p2, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
:cond_4
invoke-static {p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
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
invoke-static {v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z
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
invoke-static {p0}, Landroid/support/v7/widget/AppCompatDrawableManager;->shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z
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
invoke-static {v0, v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
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
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
goto :goto_28
:cond_3e
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V
goto :goto_2f
.end method
.method public addDelegate(Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;
:cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_18
return-void
.end method
.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
.registers 4
.parameter
.end parameter
.parameter
.end parameter
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
.registers 16
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
iget-object v9, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;
if-eqz v9, :cond_1f
const/4 v3, 0x0
iget-object v9, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_b
if-ge v3, v0, :cond_1f
iget-object v9, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;
invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
invoke-interface {v1, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;->onInflateDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v5
if-eqz v5, :cond_1c
:goto_1b
return-object v5
:cond_1c
add-int/lit8 v3, v3, 0x1
goto :goto_b
:cond_1f
invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v2
if-eqz v2, :cond_45
sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v10, 0x8
if-lt v9, v10, :cond_2f
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v2
:cond_2f
invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v6
if-eqz v6, :cond_47
invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-static {v2, v6}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
invoke-virtual {p0, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;
move-result-object v7
if-eqz v7, :cond_45
invoke-static {v2, v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
:goto_45
:cond_45
move-object v5, v2
goto :goto_1b
:cond_47
sget v9, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I
if-ne p2, v9, :cond_66
new-instance v5, Landroid/graphics/drawable/LayerDrawable;
const/4 v9, 0x2
new-array v9, v9, [Landroid/graphics/drawable/Drawable;
const/4 v10, 0x0
sget v11, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I
invoke-virtual {p0, p1, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x1
sget v11, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I
invoke-virtual {p0, p1, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v11
aput-object v11, v9, v10
invoke-direct {v5, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
goto :goto_1b
:cond_66
sget v9, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I
if-ne p2, v9, :cond_a3
move-object v4, v2
check-cast v4, Landroid/graphics/drawable/LayerDrawable;
const/high16 v9, 0x102
invoke-virtual {v4, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v9
sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v10
sget-object v11, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
const v9, 0x102000f
invoke-virtual {v4, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v9
sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v10
sget-object v11, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
const v9, 0x102000d
invoke-virtual {v4, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v9
sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v10
sget-object v11, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
goto :goto_45
:cond_a3
invoke-virtual {p0, p1, p2, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
move-result v8
if-nez v8, :cond_45
if-eqz p3, :cond_45
const/4 v2, 0x0
goto :goto_45
.end method
.method public final getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
.registers 5
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
if-nez v0, :cond_13
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I
if-ne p2, v1, :cond_14
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
:cond_e
:goto_e
if-eqz v0, :cond_13
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
:cond_13
return-object v0
:cond_14
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I
if-ne p2, v1, :cond_1d
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_e
:cond_1d
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I
if-ne p2, v1, :cond_26
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_e
:cond_26
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I
if-eq p2, v1, :cond_2e
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I
if-ne p2, v1, :cond_33
:cond_2e
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_e
:cond_33
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I
if-ne p2, v1, :cond_3c
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_e
:cond_3c
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I
if-eq p2, v1, :cond_44
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I
if-ne p2, v1, :cond_49
:cond_44
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSpinnerColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_e
:cond_49
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I
invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v1
if-eqz v1, :cond_58
sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_e
:cond_58
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I
invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v1
if-eqz v1, :cond_65
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_e
:cond_65
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I
invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v1
if-eqz v1, :cond_72
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCheckableButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_e
:cond_72
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I
if-ne p2, v1, :cond_e
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSeekbarThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_e
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
.method public removeDelegate(Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_9
return-void
.end method
.method public final tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
.registers 10
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
const/4 v3, 0x0
const/4 v2, 0x0
const/4 v0, -0x1
sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I
invoke-static {v5, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v5
if-eqz v5, :cond_25
sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
const/4 v3, 0x1
:cond_10
:goto_10
if-eqz v3, :cond_50
invoke-static {p1, v2}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v1
invoke-static {v1, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v5
invoke-virtual {p3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
const/4 v5, -0x1
if-eq v0, v5, :cond_23
invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_23
const/4 v5, 0x1
:goto_24
return v5
:cond_25
sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I
invoke-static {v5, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v5
if-eqz v5, :cond_31
sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
const/4 v3, 0x1
goto :goto_10
:cond_31
sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I
invoke-static {v5, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v5
if-eqz v5, :cond_40
const v2, 0x1010031
const/4 v3, 0x1
sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
goto :goto_10
:cond_40
sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I
if-ne p2, v5, :cond_10
const v2, 0x1010030
const/4 v3, 0x1
const v5, 0x42233333
invoke-static {v5}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_10
:cond_50
const/4 v5, 0x0
goto :goto_24
.end method