.class public final Landroid/os/CoolingDevice;
.super Ljava/lang/Object;
.source "CoolingDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CoolingDevice$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BATTERY:I = 0x1

.field public static final TYPE_COMPONENT:I = 0x6

.field public static final TYPE_CPU:I = 0x2

.field public static final TYPE_DISPLAY:I = 0x9

.field public static final TYPE_FAN:I = 0x0

.field public static final TYPE_GPU:I = 0x3

.field public static final TYPE_MODEM:I = 0x4

.field public static final TYPE_NPU:I = 0x5

.field public static final TYPE_POWER_AMPLIFIER:I = 0x8

.field public static final TYPE_SPEAKER:I = 0xa

.field public static final TYPE_TPU:I = 0x7


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:I

.field private final mValue:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Landroid/os/CoolingDevice$1;

    invoke-direct {v0}, Landroid/os/CoolingDevice$1;-><init>()V

    sput-object v0, Landroid/os/CoolingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;)V
    .registers 7
    .param p1, "value"    # J
    .param p3, "type"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p3}, Landroid/os/CoolingDevice;->isValidType(I)Z

    move-result v0

    const-string v1, "Invalid Type"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 99
    iput-wide p1, p0, Landroid/os/CoolingDevice;->mValue:J

    .line 100
    iput p3, p0, Landroid/os/CoolingDevice;->mType:I

    .line 101
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static isValidType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 94
    if-ltz p0, :cond_8

    const/16 v0, 0xa

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 146
    instance-of v0, p1, Landroid/os/CoolingDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 147
    return v1

    .line 149
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/CoolingDevice;

    .line 150
    .local v0, "other":Landroid/os/CoolingDevice;
    iget-wide v2, v0, Landroid/os/CoolingDevice;->mValue:J

    iget-wide v4, p0, Landroid/os/CoolingDevice;->mValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    iget v2, v0, Landroid/os/CoolingDevice;->mType:I

    iget v3, p0, Landroid/os/CoolingDevice;->mType:I

    if-ne v2, v3, :cond_22

    iget-object v2, v0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/os/CoolingDevice;->mType:I

    return v0
.end method

.method public getValue()J
    .registers 3

    .line 110
    iget-wide v0, p0, Landroid/os/CoolingDevice;->mValue:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 138
    iget-object v0, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 139
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/os/CoolingDevice;->mValue:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 140
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/os/CoolingDevice;->mType:I

    add-int/2addr v0, v2

    .line 141
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoolingDevice{mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/CoolingDevice;->mValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/CoolingDevice;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 155
    iget-wide v0, p0, Landroid/os/CoolingDevice;->mValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget v0, p0, Landroid/os/CoolingDevice;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return-void
.end method
