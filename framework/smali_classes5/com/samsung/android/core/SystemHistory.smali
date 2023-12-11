.class public Lcom/samsung/android/core/SystemHistory;
.super Ljava/lang/Object;
.source "SystemHistory.java"


# instance fields
.field private mEnableLog:Z

.field private mFormat:Ljava/text/SimpleDateFormat;

.field mLogMaxCount:I

.field private final mLogQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "logMaxCount"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/core/SystemHistory;->mEnableLog:Z

    .line 44
    iput p1, p0, Lcom/samsung/android/core/SystemHistory;->mLogMaxCount:I

    .line 45
    iput-object p2, p0, Lcom/samsung/android/core/SystemHistory;->mTag:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "<< MM-dd HH:mm:ss.SSS >>"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mFormat:Ljava/text/SimpleDateFormat;

    .line 48
    return-void
.end method

.method private discardOldest()Z
    .registers 4

    .line 67
    iget v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogMaxCount:I

    if-gtz v0, :cond_6

    .line 68
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_6
    :goto_6
    iget v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogMaxCount:I

    iget-object v1, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_18

    .line 72
    iget-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_6

    .line 74
    :cond_18
    return v2
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 6
    .param p1, "log"    # Ljava/lang/String;

    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/core/SystemHistory;->mEnableLog:Z

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/core/SystemHistory;->discardOldest()Z

    move-result v0

    if-nez v0, :cond_10

    .line 56
    return-void

    .line 59
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/core/SystemHistory;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/SystemHistory;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 78
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 82
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method public enableLog(Z)V
    .registers 2
    .param p1, "enableLog"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/samsung/android/core/SystemHistory;->mEnableLog:Z

    .line 64
    return-void
.end method
