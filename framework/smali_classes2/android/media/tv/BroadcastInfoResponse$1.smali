.class Landroid/media/tv/BroadcastInfoResponse$1;
.super Ljava/lang/Object;
.source "BroadcastInfoResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/BroadcastInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/BroadcastInfoResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/BroadcastInfoResponse;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "type":I
    packed-switch v0, :pswitch_data_4e

    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected broadcast info response type (value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in parcel."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :pswitch_26
    invoke-static {p1}, Landroid/media/tv/TimelineResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineResponse;

    move-result-object v1

    return-object v1

    .line 71
    :pswitch_2b
    invoke-static {p1}, Landroid/media/tv/CommandResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/CommandResponse;

    move-result-object v1

    return-object v1

    .line 69
    :pswitch_30
    invoke-static {p1}, Landroid/media/tv/DsmccResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/DsmccResponse;

    move-result-object v1

    return-object v1

    .line 67
    :pswitch_35
    invoke-static {p1}, Landroid/media/tv/StreamEventResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/StreamEventResponse;

    move-result-object v1

    return-object v1

    .line 65
    :pswitch_3a
    invoke-static {p1}, Landroid/media/tv/PesResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/PesResponse;

    move-result-object v1

    return-object v1

    .line 63
    :pswitch_3f
    invoke-static {p1}, Landroid/media/tv/SectionResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SectionResponse;

    move-result-object v1

    return-object v1

    .line 61
    :pswitch_44
    invoke-static {p1}, Landroid/media/tv/TableResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableResponse;

    move-result-object v1

    return-object v1

    .line 59
    :pswitch_49
    invoke-static {p1}, Landroid/media/tv/TsResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TsResponse;

    move-result-object v1

    return-object v1

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Landroid/media/tv/BroadcastInfoResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/BroadcastInfoResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/tv/BroadcastInfoResponse;
    .registers 3
    .param p1, "size"    # I

    .line 83
    new-array v0, p1, [Landroid/media/tv/BroadcastInfoResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Landroid/media/tv/BroadcastInfoResponse$1;->newArray(I)[Landroid/media/tv/BroadcastInfoResponse;

    move-result-object p1

    return-object p1
.end method
