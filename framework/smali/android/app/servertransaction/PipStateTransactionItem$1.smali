.class Landroid/app/servertransaction/PipStateTransactionItem$1;
.super Ljava/lang/Object;
.source "PipStateTransactionItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/servertransaction/PipStateTransactionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/servertransaction/PipStateTransactionItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/PipStateTransactionItem;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    new-instance v0, Landroid/app/servertransaction/PipStateTransactionItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/servertransaction/PipStateTransactionItem;-><init>(Landroid/os/Parcel;Landroid/app/servertransaction/PipStateTransactionItem-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/PipStateTransactionItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/PipStateTransactionItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/servertransaction/PipStateTransactionItem;
    .registers 3
    .param p1, "size"    # I

    .line 80
    new-array v0, p1, [Landroid/app/servertransaction/PipStateTransactionItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/PipStateTransactionItem$1;->newArray(I)[Landroid/app/servertransaction/PipStateTransactionItem;

    move-result-object p1

    return-object p1
.end method
