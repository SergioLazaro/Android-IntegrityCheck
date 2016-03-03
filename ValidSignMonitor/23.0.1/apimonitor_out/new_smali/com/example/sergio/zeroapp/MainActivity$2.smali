.class  Lcom/example/sergio/zeroapp/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/example/sergio/zeroapp/MainActivity;
.method constructor <init>(Lcom/example/sergio/zeroapp/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/example/sergio/zeroapp/MainActivity$2;->this$0:Lcom/example/sergio/zeroapp/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/example/sergio/zeroapp/MainActivity$2;->this$0:Lcom/example/sergio/zeroapp/MainActivity;
#calls: Lcom/example/sergio/zeroapp/MainActivity;->printSignature(Landroid/view/View;)V
invoke-static {v0, p1}, Lcom/example/sergio/zeroapp/MainActivity;->access$100(Lcom/example/sergio/zeroapp/MainActivity;Landroid/view/View;)V
return-void
.end method