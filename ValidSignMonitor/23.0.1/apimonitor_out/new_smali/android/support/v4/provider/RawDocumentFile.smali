.class  Landroid/support/v4/provider/RawDocumentFile;
.super Landroid/support/v4/provider/DocumentFile;
.source "RawDocumentFile.java"
.field private mFile:Ljava/io/File;
.method constructor <init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/provider/DocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;)V
iput-object p2, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
return-void
.end method
.method private static deleteContents(Ljava/io/File;)Z
.registers 10
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
const/4 v5, 0x1
if-eqz v2, :cond_3b
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_a
if-ge v3, v4, :cond_3b
aget-object v1, v0, v3
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v6
if-eqz v6, :cond_19
invoke-static {v1}, Landroid/support/v4/provider/RawDocumentFile;->deleteContents(Ljava/io/File;)Z
move-result v6
and-int/2addr v5, v6
:cond_19
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v6
if-nez v6, :cond_38
const-string v6, "DocumentFile"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Failed to delete "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 v5, 0x0
:cond_38
add-int/lit8 v3, v3, 0x1
goto :goto_a
:cond_3b
return v5
.end method
.method private static getTypeForName(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/16 v3, 0x2e
invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
if-ltz v1, :cond_1d
add-int/lit8 v3, v1, 0x1
invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v3
invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_1d
:goto_1c
return-object v2
:cond_1d
const-string v2, "application/octet-stream"
goto :goto_1c
.end method
.method public canRead()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->canRead()Z
move-result v0
return v0
.end method
.method public canWrite()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->canWrite()Z
move-result v0
return v0
.end method
.method public createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
.registers 4
new-instance v0, Ljava/io/File;
iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_13
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
move-result v1
if-eqz v1, :cond_19
:cond_13
new-instance v1, Landroid/support/v4/provider/RawDocumentFile;
invoke-direct {v1, p0, v0}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V
:goto_18
return-object v1
:cond_19
const/4 v1, 0x0
goto :goto_18
.end method
.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
.registers 9
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v3
invoke-virtual {v3, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_21
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p2
:cond_21
new-instance v2, Ljava/io/File;
iget-object v3, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_28
invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
new-instance v3, Landroid/support/v4/provider/RawDocumentFile;
invoke-direct {v3, p0, v2}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V
:goto_30
:try_end_30
.catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_31
return-object v3
:catch_31
move-exception v0
const-string v3, "DocumentFile"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Failed to createFile: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 v3, 0x0
goto :goto_30
.end method
.method public delete()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-static {v0}, Landroid/support/v4/provider/RawDocumentFile;->deleteContents(Ljava/io/File;)Z
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
return v0
.end method
.method public exists()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/provider/RawDocumentFile;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method public getUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public isDirectory()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v0
return v0
.end method
.method public isFile()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->isFile()Z
move-result v0
return v0
.end method
.method public lastModified()J
.registers 3
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v0
return-wide v0
.end method
.method public length()J
.registers 3
iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v0
return-wide v0
.end method
.method public listFiles()[Landroid/support/v4/provider/DocumentFile;
.registers 8
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v6, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
if-eqz v2, :cond_1f
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_10
if-ge v3, v4, :cond_1f
aget-object v1, v0, v3
new-instance v6, Landroid/support/v4/provider/RawDocumentFile;
invoke-direct {v6, p0, v1}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V
invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v3, v3, 0x1
goto :goto_10
:cond_1f
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v6
new-array v6, v6, [Landroid/support/v4/provider/DocumentFile;
invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v6
check-cast v6, [Landroid/support/v4/provider/DocumentFile;
return-object v6
.end method
.method public renameTo(Ljava/lang/String;)Z
.registers 4
new-instance v0, Ljava/io/File;
iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v1
invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v1
if-eqz v1, :cond_17
iput-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;
const/4 v1, 0x1
:goto_16
return v1
:cond_17
const/4 v1, 0x0
goto :goto_16
.end method