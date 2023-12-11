.class public Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
.super Ljava/lang/Object;
.source "PhraseRecognitionEventSys.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public halEventReceivedMillis:J

.field public phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

.field public token:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys$1;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys$1;-><init>()V

    sput-object v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 101
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 102
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 104
    :cond_10
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-direct {p0, v1}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 97
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 80
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 81
    :cond_8
    instance-of v2, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    if-nez v2, :cond_d

    return v1

    .line 82
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    .line 83
    .local v2, "that":Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    iget-object v3, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    iget-object v4, v2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    return v1

    .line 84
    :cond_1b
    iget-wide v3, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    .line 85
    :cond_2e
    iget-object v3, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->token:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->token:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    return v1

    .line 86
    :cond_39
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 91
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    iget-wide v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->token:Landroid/os/IBinder;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 53
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7a

    .line 56
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 64
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_26
    :try_start_26
    sget-object v2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    iput-object v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 64
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 64
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->token:Landroid/os/IBinder;
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_78

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_72

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    nop

    .line 68
    return-void

    .line 64
    :cond_72
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :catchall_78
    move-exception v2

    goto :goto_82

    .line 55
    :cond_7a
    :try_start_7a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_78

    .line 63
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_82
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8b

    .line 64
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_8b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 71
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 72
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phraseRecognitionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "halEventReceivedMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->token:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.soundtrigger_middleware.PhraseRecognitionEventSys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 43
    iget-wide v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 46
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void
.end method
