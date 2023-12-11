.class public final Landroid/telephony/BarringInfo$BarringServiceInfo;
.super Ljava/lang/Object;
.source "BarringInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BarringInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BarringServiceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BarringInfo$BarringServiceInfo$BarringType;
    }
.end annotation


# static fields
.field public static final BARRING_TYPE_CONDITIONAL:I = 0x1

.field public static final BARRING_TYPE_NONE:I = 0x0

.field public static final BARRING_TYPE_UNCONDITIONAL:I = 0x2

.field public static final BARRING_TYPE_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBarringType:I

.field private final mConditionalBarringFactor:I

.field private final mConditionalBarringTimeSeconds:I

.field private final mIsConditionallyBarred:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 222
    new-instance v0, Landroid/telephony/BarringInfo$BarringServiceInfo$1;

    invoke-direct {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    .line 135
    return-void
.end method

.method public constructor <init>(IZII)V
    .registers 5
    .param p1, "barringType"    # I
    .param p2, "isConditionallyBarred"    # Z
    .param p3, "conditionalBarringFactor"    # I
    .param p4, "conditionalBarringTimeSeconds"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    .line 142
    iput-boolean p2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    .line 143
    iput p3, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    .line 144
    iput p4, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    .line 211
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 196
    instance-of v0, p1, Landroid/telephony/BarringInfo$BarringServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 198
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    .line 199
    .local v0, "other":Landroid/telephony/BarringInfo$BarringServiceInfo;
    iget v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    iget v3, v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    if-ne v2, v3, :cond_22

    iget-boolean v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    iget-boolean v3, v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    iget v3, v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    iget v3, v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    if-ne v2, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public getBarringType()I
    .registers 2

    .line 148
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    return v0
.end method

.method public getConditionalBarringFactor()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    return v0
.end method

.method public getConditionalBarringTimeSeconds()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 190
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 190
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBarred()Z
    .registers 4

    .line 183
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_e

    if-ne v0, v2, :cond_d

    iget-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :cond_e
    :goto_e
    return v2
.end method

.method public isConditionallyBarred()Z
    .registers 2

    .line 157
    iget-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{isBarred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->isBarred()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConditionally: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeseconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 215
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return-void
.end method
