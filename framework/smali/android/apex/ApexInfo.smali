.class public Landroid/apex/ApexInfo;
.super Ljava/lang/Object;
.source "ApexInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apex/ApexInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activeApexChanged:Z

.field public hasClassPathJars:Z

.field public isActive:Z

.field public isFactory:Z

.field public moduleName:Ljava/lang/String;

.field public modulePath:Ljava/lang/String;

.field public preinstalledModulePath:Ljava/lang/String;

.field public versionCode:J

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/apex/ApexInfo$1;

    invoke-direct {v0}, Landroid/apex/ApexInfo$1;-><init>()V

    sput-object v0, Landroid/apex/ApexInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/apex/ApexInfo;->versionCode:J

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/apex/ApexInfo;->isFactory:Z

    .line 13
    iput-boolean v0, p0, Landroid/apex/ApexInfo;->isActive:Z

    .line 15
    iput-boolean v0, p0, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    .line 25
    iput-boolean v0, p0, Landroid/apex/ApexInfo;->activeApexChanged:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "_mask":I
    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 59
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_133

    .line 62
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 82
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 82
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 82
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 82
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/apex/ApexInfo;->versionCode:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 82
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 82
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_bc

    move v2, v5

    goto :goto_bd

    :cond_bc
    move v2, v6

    :goto_bd
    iput-boolean v2, p0, Landroid/apex/ApexInfo;->isFactory:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c3
    .catchall {:try_start_b2 .. :try_end_c3} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d5

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cf

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 82
    :cond_cf
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_d5
    :try_start_d5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_dd

    move v2, v5

    goto :goto_de

    :cond_dd
    move v2, v6

    :goto_de
    iput-boolean v2, p0, Landroid/apex/ApexInfo;->isActive:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e4
    .catchall {:try_start_d5 .. :try_end_e4} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f6

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f0

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 82
    :cond_f0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_f6
    :try_start_f6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fe

    move v2, v5

    goto :goto_ff

    :cond_fe
    move v2, v6

    :goto_ff
    iput-boolean v2, p0, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_105
    .catchall {:try_start_f6 .. :try_end_105} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_117

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_111

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 82
    :cond_111
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_117
    :try_start_117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11e

    goto :goto_11f

    :cond_11e
    move v5, v6

    :goto_11f
    iput-boolean v5, p0, Landroid/apex/ApexInfo;->activeApexChanged:Z
    :try_end_121
    .catchall {:try_start_117 .. :try_end_121} :catchall_131

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12b

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    nop

    .line 86
    return-void

    .line 82
    :cond_12b
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :catchall_131
    move-exception v2

    goto :goto_13b

    .line 61
    :cond_133
    :try_start_133
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/apex/ApexInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_13b
    .catchall {:try_start_133 .. :try_end_13b} :catchall_131

    .line 81
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/apex/ApexInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_13b
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_144

    .line 82
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_144
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 41
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v1, p0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-wide v1, p0, Landroid/apex/ApexInfo;->versionCode:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-object v1, p0, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-boolean v1, p0, Landroid/apex/ApexInfo;->isFactory:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean v1, p0, Landroid/apex/ApexInfo;->isActive:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean v1, p0, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-boolean v1, p0, Landroid/apex/ApexInfo;->activeApexChanged:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 52
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void
.end method
