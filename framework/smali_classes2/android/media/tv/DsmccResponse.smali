.class public final Landroid/media/tv/DsmccResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "DsmccResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/DsmccResponse$BiopMessageType;
    }
.end annotation


# static fields
.field public static final BIOP_MESSAGE_TYPE_DIRECTORY:Ljava/lang/String; = "directory"

.field public static final BIOP_MESSAGE_TYPE_FILE:Ljava/lang/String; = "file"

.field public static final BIOP_MESSAGE_TYPE_SERVICE_GATEWAY:Ljava/lang/String; = "service_gateway"

.field public static final BIOP_MESSAGE_TYPE_STREAM:Ljava/lang/String; = "stream"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/DsmccResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESPONSE_TYPE:I = 0x6


# instance fields
.field private final mBiopMessageType:Ljava/lang/String;

.field private final mChildList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventIds:[I

.field private final mEventNames:[Ljava/lang/String;

.field private final mFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/media/tv/DsmccResponse$1;

    invoke-direct {v0}, Landroid/media/tv/DsmccResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/DsmccResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILandroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "sequence"    # I
    .param p3, "responseResult"    # I
    .param p4, "file"    # Landroid/os/ParcelFileDescriptor;

    .line 88
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 89
    const-string v0, "file"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 92
    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 93
    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(IIIZLjava/util/List;)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "sequence"    # I
    .param p3, "responseResult"    # I
    .param p4, "isServiceGateway"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p5, "childList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 102
    if-eqz p4, :cond_b

    .line 103
    const-string v0, "service_gateway"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    goto :goto_f

    .line 105
    :cond_b
    const-string v0, "directory"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 107
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 108
    iput-object p5, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 109
    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 110
    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(III[I[Ljava/lang/String;)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "sequence"    # I
    .param p3, "responseResult"    # I
    .param p4, "eventIds"    # [I
    .param p5, "eventNames"    # [Ljava/lang/String;

    .line 121
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 122
    const-string v0, "stream"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 124
    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 125
    if-eqz p4, :cond_15

    if-eqz p5, :cond_15

    array-length v0, p4

    array-length v1, p5

    if-eq v0, v1, :cond_19

    :cond_15
    if-nez p4, :cond_1e

    if-nez p5, :cond_1e

    .line 129
    :cond_19
    iput-object p4, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 130
    iput-object p5, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 131
    return-void

    .line 127
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of eventIds and eventNames must be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 134
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_aa

    :cond_11
    goto :goto_3a

    :sswitch_12
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    goto :goto_3b

    :sswitch_1c
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_26
    const-string v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    goto :goto_3b

    :sswitch_30
    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_3b

    :goto_3a
    const/4 v0, -0x1

    :goto_3b
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_bc

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected BIOP message type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .local v0, "eventNum":I
    if-lez v0, :cond_6c

    .line 161
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 162
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 163
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_56
    if-ge v2, v0, :cond_6b

    .line 164
    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 165
    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .end local v2    # "i":I
    :cond_6b
    goto :goto_70

    .line 168
    :cond_6c
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 169
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 171
    :goto_70
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 172
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 173
    goto :goto_a8

    .line 153
    .end local v0    # "eventNum":I
    :pswitch_75
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 154
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 155
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 156
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 157
    goto :goto_a8

    .line 140
    :pswitch_82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .local v0, "childNum":I
    if-lez v0, :cond_9f

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 143
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_90
    if-ge v2, v0, :cond_9e

    .line 144
    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    .end local v2    # "i":I
    :cond_9e
    goto :goto_a1

    .line 147
    :cond_9f
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 148
    :goto_a1
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 149
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 150
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 151
    nop

    .line 177
    .end local v0    # "childNum":I
    :goto_a8
    return-void

    nop

    :sswitch_data_aa
    .sparse-switch
        -0x395fe193 -> :sswitch_30
        -0x3935d146 -> :sswitch_26
        -0x352ab080 -> :sswitch_1c
        0x2ff57c -> :sswitch_12
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_82
        :pswitch_82
        :pswitch_75
        :pswitch_47
    .end packed-switch
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/DsmccResponse;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 80
    new-instance v0, Landroid/media/tv/DsmccResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/DsmccResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getBiopMessageType()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    return-object v0
.end method

.method public getChildList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 205
    const-string v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 206
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not directory object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    if-eqz v0, :cond_29

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2e

    :cond_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2e
    return-object v0
.end method

.method public getFile()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 192
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 195
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0

    .line 193
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not file object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamEventIds()[I
    .registers 3

    .line 216
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 219
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    if-eqz v0, :cond_f

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_12
    return-object v0

    .line 217
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not stream event object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamEventNames()[Ljava/lang/String;
    .registers 3

    .line 227
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 230
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    if-eqz v0, :cond_f

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_12
    return-object v0

    .line 228
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not stream event object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 240
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_a6

    :cond_12
    goto :goto_3b

    :sswitch_13
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    goto :goto_3c

    :sswitch_1d
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x3

    goto :goto_3c

    :sswitch_27
    const-string v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_3c

    :sswitch_31
    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_3c

    :goto_3b
    const/4 v0, -0x1

    :goto_3c
    packed-switch v0, :pswitch_data_b8

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected BIOP message type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_47
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    if-eqz v0, :cond_68

    array-length v1, v0

    if-lez v1, :cond_68

    .line 258
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_53
    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_67

    .line 260
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .end local v0    # "i":I
    :cond_67
    goto :goto_a4

    .line 264
    :cond_68
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    goto :goto_a4

    .line 254
    :pswitch_6c
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 255
    goto :goto_a4

    .line 245
    :pswitch_76
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    if-eqz v0, :cond_a0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a0

    .line 246
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, "child":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    .end local v1    # "child":Ljava/lang/String;
    goto :goto_8f

    :cond_9f
    goto :goto_a4

    .line 251
    :cond_a0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    nop

    .line 269
    :goto_a4
    return-void

    nop

    :sswitch_data_a6
    .sparse-switch
        -0x395fe193 -> :sswitch_31
        -0x3935d146 -> :sswitch_27
        -0x352ab080 -> :sswitch_1d
        0x2ff57c -> :sswitch_13
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_76
        :pswitch_76
        :pswitch_6c
        :pswitch_47
    .end packed-switch
.end method
