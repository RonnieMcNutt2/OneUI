.class Landroid/app/AppOpsManager$HistoricalOp$1;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager$HistoricalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/AppOpsManager$HistoricalOp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 7018
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/os/Parcel;Landroid/app/AppOpsManager$HistoricalOp-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 7015
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/AppOpsManager$HistoricalOp;
    .registers 3
    .param p1, "size"    # I

    .line 7023
    new-array v0, p1, [Landroid/app/AppOpsManager$HistoricalOp;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 7015
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp$1;->newArray(I)[Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p1

    return-object p1
.end method
