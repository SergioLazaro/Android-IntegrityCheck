.class abstract Landroid/support/v4/content/ModernAsyncTask;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"
.field private static final CORE_POOL_SIZE:I = 0x5
.field private static final KEEP_ALIVE:I = 0x1
.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"
.field private static final MAXIMUM_POOL_SIZE:I = 0x80
.field private static final MESSAGE_POST_PROGRESS:I = 0x2
.field private static final MESSAGE_POST_RESULT:I = 0x1
.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;
.field private static sHandler:Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;
.field private final mFuture:Ljava/util/concurrent/FutureTask;
.field private volatile mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;
.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final mWorker:Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
.method static constructor <clinit>()V
.registers 9
new-instance v0, Landroid/support/v4/content/ModernAsyncTask$1;
invoke-direct {v0}, Landroid/support/v4/content/ModernAsyncTask$1;-><init>()V
sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
const/16 v1, 0xa
invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V
sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v2, 0x5
const/16 v3, 0x80
const-wide/16 v4, 0x1
sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
sget-object v7, Landroid/support/v4/content/ModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
sget-object v8, Landroid/support/v4/content/ModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;
invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
sput-object v1, Landroid/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;
iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V
iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Landroid/support/v4/content/ModernAsyncTask$2;
invoke-direct {v0, p0}, Landroid/support/v4/content/ModernAsyncTask$2;-><init>(Landroid/support/v4/content/ModernAsyncTask;)V
iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mWorker:Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
new-instance v0, Landroid/support/v4/content/ModernAsyncTask$3;
iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask;->mWorker:Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
invoke-direct {v0, p0, v1}, Landroid/support/v4/content/ModernAsyncTask$3;-><init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;
return-void
.end method
.method static synthetic access$100(Landroid/support/v4/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method static synthetic access$200(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method static synthetic access$300(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$400(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V
return-void
.end method
.method public static execute(Ljava/lang/Runnable;)V
.registers 2
sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;
invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method private finish(Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->isCancelled()Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->onCancelled(Ljava/lang/Object;)V
:goto_9
sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;
iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;
return-void
:cond_e
invoke-virtual {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->onPostExecute(Ljava/lang/Object;)V
goto :goto_9
.end method
.method private static getHandler()Landroid/os/Handler;
.registers 2
const-class v1, Landroid/support/v4/content/ModernAsyncTask;
monitor-enter v1
:try_start_3
sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->sHandler:Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
if-nez v0, :cond_e
new-instance v0, Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
invoke-direct {v0}, Landroid/support/v4/content/ModernAsyncTask$InternalHandler;-><init>()V
sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->sHandler:Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
:cond_e
sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->sHandler:Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
.registers 8
const/4 v5, 0x1
invoke-static {}, Landroid/support/v4/content/ModernAsyncTask;->getHandler()Landroid/os/Handler;
move-result-object v1
new-instance v2, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;
new-array v3, v5, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
invoke-direct {v2, p0, v3}, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;-><init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V
invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-object p1
.end method
.method private postResultIfNotInvoked(Ljava/lang/Object;)V
.registers 4
iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-nez v0, :cond_b
invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
:cond_b
return-void
.end method
.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
.registers 1
sput-object p0, Landroid/support/v4/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;
return-void
.end method
.method public final cancel(Z)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;
invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
move-result v0
return v0
.end method
.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public final varargs execute([Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
.registers 3
sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;
invoke-virtual {p0, v0, p1}, Landroid/support/v4/content/ModernAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
move-result-object v0
return-object v0
.end method
.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
.registers 5
iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;
sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;
if-eq v0, v1, :cond_13
sget-object v0, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I
iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;
invoke-virtual {v1}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_34
:cond_13
sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;
iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;
invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->onPreExecute()V
iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mWorker:Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
iput-object p2, v0, Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;
invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-object p0
:pswitch_24
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot execute task: the task is already running."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_2c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_data_34
.packed-switch 0x1
:pswitch_24
:pswitch_2c
.end packed-switch
.end method
.method public final get()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;
invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;
invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getStatus()Landroid/support/v4/content/ModernAsyncTask$Status;
.registers 2
iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;
return-object v0
.end method
.method public final isCancelled()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;
invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z
move-result v0
return v0
.end method
.method protected onCancelled()V
.registers 1
return-void
.end method
.method protected onCancelled(Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->onCancelled()V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method protected onPreExecute()V
.registers 1
return-void
.end method
.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method protected final varargs publishProgress([Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->isCancelled()Z
move-result v0
if-nez v0, :cond_17
invoke-static {}, Landroid/support/v4/content/ModernAsyncTask;->getHandler()Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x2
new-instance v2, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;
invoke-direct {v2, p0, p1}, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;-><init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V
invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:cond_17
return-void
.end method