.class Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# static fields
.field private static final VIEW_ATTRS:[I


# instance fields
.field private final mTintManager:Landroid/support/v7/widget/TintManager;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010119

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatImageHelper;->VIEW_ATTRS:[I

    return-void
.end method

.method constructor <init>(Landroid/widget/ImageView;Landroid/support/v7/widget/TintManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    iput-object p2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    return-void
.end method


# virtual methods
.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/AppCompatImageHelper;->VIEW_ATTRS:[I

    invoke-static {v1, p1, v2, p2, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_e
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_22

    :cond_1e
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void

    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v1
.end method

.method setImageResource(I)V
    .registers 4

    if-eqz p1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e

    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11
.end method