.class public final Landroid/service/notification/SnoozeCriterion;
.super Ljava/lang/Object;
.source "SnoozeCriterion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfirmation:Ljava/lang/CharSequence;

.field private final mExplanation:Ljava/lang/CharSequence;

.field private final mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Landroid/service/notification/SnoozeCriterion$1;

    invoke-direct {v0}, Landroid/service/notification/SnoozeCriterion$1;-><init>()V

    sput-object v0, Landroid/service/notification/SnoozeCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    goto :goto_13

    .line 44
    :cond_11
    iput-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    .line 46
    :goto_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_20

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    goto :goto_22

    .line 49
    :cond_20
    iput-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    .line 51
    :goto_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2f

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    goto :goto_31

    .line 54
    :cond_2f
    iput-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    .line 56
    :goto_31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "explanation"    # Ljava/lang/CharSequence;
    .param p3, "confirmation"    # Ljava/lang/CharSequence;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    .line 37
    iput-object p3, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 122
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4b

    .line 124
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/notification/SnoozeCriterion;

    .line 126
    .local v2, "that":Landroid/service/notification/SnoozeCriterion;
    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v4, v2, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_26

    :cond_22
    iget-object v3, v2, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    if-eqz v3, :cond_27

    :goto_26
    return v1

    .line 127
    :cond_27
    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_34

    iget-object v4, v2, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_38

    :cond_34
    iget-object v3, v2, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_39

    .line 129
    :goto_38
    return v1

    .line 131
    :cond_39
    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_44

    iget-object v0, v2, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4a

    .line 132
    :cond_44
    iget-object v3, v2, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-nez v3, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v1

    .line 131
    :goto_4a
    return v0

    .line 122
    .end local v2    # "that":Landroid/service/notification/SnoozeCriterion;
    :cond_4b
    :goto_4b
    return v1
.end method

.method public getConfirmation()Ljava/lang/CharSequence;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExplanation()Ljava/lang/CharSequence;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 138
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 139
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    add-int/2addr v2, v3

    .line 140
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    .line 141
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_12

    .line 103
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    :goto_12
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 109
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    :goto_22
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2f

    .line 112
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 113
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 115
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 117
    :goto_32
    return-void
.end method
