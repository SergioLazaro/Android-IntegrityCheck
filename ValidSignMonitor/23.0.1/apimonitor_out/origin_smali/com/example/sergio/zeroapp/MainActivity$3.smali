.class Lcom/example/sergio/zeroapp/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/sergio/zeroapp/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/sergio/zeroapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/sergio/zeroapp/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/example/sergio/zeroapp/MainActivity$3;->this$0:Lcom/example/sergio/zeroapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/example/sergio/zeroapp/MainActivity$3;->this$0:Lcom/example/sergio/zeroapp/MainActivity;

    #calls: Lcom/example/sergio/zeroapp/MainActivity;->printFirstMessage(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/example/sergio/zeroapp/MainActivity;->access$200(Lcom/example/sergio/zeroapp/MainActivity;Landroid/view/View;)V

    return-void
.end method
