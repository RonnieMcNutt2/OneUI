.class public Landroid/hardware/radio/RadioManager$FmBandConfig;
.super Landroid/hardware/radio/RadioManager$BandConfig;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FmBandConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$FmBandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAf:Z

.field private final mEa:Z

.field private final mRds:Z

.field private final mStereo:Z

.field private final mTa:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1134
    new-instance v0, Landroid/hardware/radio/RadioManager$FmBandConfig$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$FmBandConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIIIZZZZZ)V
    .registers 11
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I
    .param p6, "stereo"    # Z
    .param p7, "rds"    # Z
    .param p8, "ta"    # Z
    .param p9, "af"    # Z
    .param p10, "ea"    # Z

    .line 1081
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(IIIII)V

    .line 1082
    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    .line 1083
    iput-boolean p7, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    .line 1084
    iput-boolean p8, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    .line 1085
    iput-boolean p9, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    .line 1086
    iput-boolean p10, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    .line 1087
    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V
    .registers 3
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .line 1071
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    .line 1072
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    .line 1073
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    .line 1074
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    .line 1075
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    .line 1076
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isEaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    .line 1077
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandConfig-IA;)V

    .line 1127
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    .line 1128
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    .line 1129
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    .line 1130
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    .line 1131
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_39

    move v1, v2

    :cond_39
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    .line 1132
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$FmBandConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1182
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1183
    return v0

    .line 1184
    :cond_4
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1185
    return v2

    .line 1186
    :cond_c
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$FmBandConfig;

    if-nez v1, :cond_11

    .line 1187
    return v2

    .line 1188
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$FmBandConfig;

    .line 1189
    .local v1, "other":Landroid/hardware/radio/RadioManager$FmBandConfig;
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    if-eq v3, v4, :cond_1b

    .line 1190
    return v2

    .line 1191
    :cond_1b
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    if-eq v3, v4, :cond_22

    .line 1192
    return v2

    .line 1193
    :cond_22
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    if-eq v3, v4, :cond_29

    .line 1194
    return v2

    .line 1195
    :cond_29
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    if-eq v3, v4, :cond_30

    .line 1196
    return v2

    .line 1197
    :cond_30
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    if-eq v3, v4, :cond_37

    .line 1198
    return v2

    .line 1199
    :cond_37
    return v0
.end method

.method public getAf()Z
    .registers 2

    .line 1114
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    return v0
.end method

.method public getEa()Z
    .registers 2

    .line 1122
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    return v0
.end method

.method public getRds()Z
    .registers 2

    .line 1100
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    return v0
.end method

.method public getStereo()Z
    .registers 2

    .line 1093
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    return v0
.end method

.method public getTa()Z
    .registers 2

    .line 1107
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 1170
    const/16 v0, 0x1f

    .line 1171
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->hashCode()I

    move-result v1

    .line 1172
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    add-int/2addr v2, v3

    .line 1173
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    add-int/2addr v1, v3

    .line 1174
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    add-int/2addr v2, v3

    .line 1175
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    add-int/2addr v1, v3

    .line 1176
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    add-int/2addr v2, v3

    .line 1177
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FmBandConfig ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEa ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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

    .line 1147
    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1148
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1149
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1150
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1151
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1152
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1153
    return-void
.end method
