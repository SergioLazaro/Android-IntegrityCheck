.class  Landroid/support/v4/util/ArrayMap$1;
.super Landroid/support/v4/util/MapCollections;
.source "ArrayMap.java"
.field final synthetic this$0:Landroid/support/v4/util/ArrayMap;
.method constructor <init>(Landroid/support/v4/util/ArrayMap;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;
invoke-direct {p0}, Landroid/support/v4/util/MapCollections;-><init>()V
return-void
.end method
.method protected colClear()V
.registers 2
iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V
return-void
.end method
.method protected colGetEntry(II)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;
iget-object v0, v0, Landroid/support/v4/util/ArrayMap;->mArray:[Ljava/lang/Object;
shl-int/lit8 v1, p1, 0x1
add-int/2addr v1, p2
aget-object v0, v0, v1
return-object v0
.end method
.method protected colGetMap()Ljava/util/Map;
.registers 2
iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;
return-object v0
.end method
.method protected colGetSize()I
.registers 2
iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;
iget v0, v0, Landroid/support/v4/util/ArrayMap;->mSize:I
return v0
.end method
.method protected colIndexOfKey(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method protected colIndexOfValue(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method protected colRemoveAt(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
return-void
.end method
.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method