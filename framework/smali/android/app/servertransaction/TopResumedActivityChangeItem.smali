.class public Landroid/app/servertransaction/TopResumedActivityChangeItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "TopResumedActivityChangeItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/TopResumedActivityChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOnTop:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/app/servertransaction/TopResumedActivityChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/TopResumedActivityChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/TopResumedActivityChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/TopResumedActivityChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Z)Landroid/app/servertransaction/TopResumedActivityChangeItem;
    .registers 3
    .param p0, "onTop"    # Z

    .line 68
    nop

    .line 69
    const-class v0, Landroid/app/servertransaction/TopResumedActivityChangeItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/TopResumedActivityChangeItem;

    .line 70
    .local v0, "instance":Landroid/app/servertransaction/TopResumedActivityChangeItem;
    if-nez v0, :cond_11

    .line 71
    new-instance v1, Landroid/app/servertransaction/TopResumedActivityChangeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/TopResumedActivityChangeItem;-><init>()V

    move-object v0, v1

    .line 73
    :cond_11
    iput-boolean p0, v0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    .line 75
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 112
    return v0

    .line 114
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 117
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/TopResumedActivityChangeItem;

    .line 118
    .local v2, "other":Landroid/app/servertransaction/TopResumedActivityChangeItem;
    iget-boolean v3, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 115
    .end local v2    # "other":Landroid/app/servertransaction/TopResumedActivityChangeItem;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 8
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 40
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "topResumedActivityChangeItem"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 41
    iget-boolean v3, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    invoke-virtual {p1, p2, v3, v2}, Landroid/app/ClientTransactionHandler;->handleTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 42
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 43
    return-void
.end method

.method public hashCode()I
    .registers 4

    .line 123
    const/16 v0, 0x11

    .line 124
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    add-int/2addr v1, v2

    .line 125
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 48
    iget-boolean v0, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    if-eqz v0, :cond_5

    .line 49
    return-void

    .line 58
    :cond_5
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityClient;->activityTopResumedStateLost()V

    .line 59
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    .line 81
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopResumedActivityChangeItem{onTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget-boolean v0, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 91
    return-void
.end method
