.class public Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;
.super Ljava/lang/Object;
.source "SemProcessUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemProcessUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessUsageHistoryItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pid:I

.field private processName:Ljava/lang/String;

.field private uid:I

.field private usage:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 316
    new-instance v0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->processName:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->uid:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->pid:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->usage:J

    .line 311
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->-$$Nest$fgetprocessName(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->processName:Ljava/lang/String;

    .line 298
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->-$$Nest$fgetuid(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->uid:I

    .line 299
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->-$$Nest$fgetpid(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->pid:I

    .line 300
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->-$$Nest$fgetusage(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->usage:J

    .line 301
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;)V
    .registers 4
    .param p1, "copy"    # Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->processName:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->getUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->uid:I

    .line 215
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->getPid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->pid:I

    .line 216
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->getUsage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->usage:J

    .line 217
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public getPid()I
    .registers 2

    .line 243
    iget v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->pid:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 234
    iget v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->uid:I

    return v0
.end method

.method public getUsage()J
    .registers 3

    .line 252
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->usage:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 341
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->usage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 345
    return-void
.end method
