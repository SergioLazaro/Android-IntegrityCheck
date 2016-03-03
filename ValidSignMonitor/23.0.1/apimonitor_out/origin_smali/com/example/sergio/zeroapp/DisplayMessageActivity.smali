.class public Lcom/example/sergio/zeroapp/DisplayMessageActivity;
.super Landroid/app/Activity;
.source "DisplayMessageActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/example/sergio/zeroapp/DisplayMessageActivity;->setContentView(I)V

    return-void
.end method
