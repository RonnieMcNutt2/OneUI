.class public final Landroid/app/slice/SliceItem;
.super Ljava/lang/Object;
.source "SliceItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/slice/SliceItem$SliceType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_ACTION:Ljava/lang/String; = "action"

.field public static final FORMAT_BUNDLE:Ljava/lang/String; = "bundle"

.field public static final FORMAT_IMAGE:Ljava/lang/String; = "image"

.field public static final FORMAT_INT:Ljava/lang/String; = "int"

.field public static final FORMAT_LONG:Ljava/lang/String; = "long"

.field public static final FORMAT_REMOTE_INPUT:Ljava/lang/String; = "input"

.field public static final FORMAT_SLICE:Ljava/lang/String; = "slice"

.field public static final FORMAT_TEXT:Ljava/lang/String; = "text"

.field public static final FORMAT_TIMESTAMP:Ljava/lang/String; = "long"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SliceItem"


# instance fields
.field private final mFormat:Ljava/lang/String;

.field protected mHints:[Ljava/lang/String;

.field private final mObj:Ljava/lang/Object;

.field private final mSubType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 381
    new-instance v0, Landroid/app/slice/SliceItem$1;

    invoke-direct {v0}, Landroid/app/slice/SliceItem$1;-><init>()V

    sput-object v0, Landroid/app/slice/SliceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "slice"    # Landroid/app/slice/Slice;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "subType"    # Ljava/lang/String;
    .param p5, "hints"    # [Ljava/lang/String;

    .line 152
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p3, p4, p5}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 283
    invoke-static {v0, p1}, Landroid/app/slice/SliceItem;->readObj(Ljava/lang/String;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p4, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "subType"    # Ljava/lang/String;
    .param p4, "hints"    # [Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p4, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 142
    iput-object p2, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 144
    iput-object p1, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 145
    return-void
.end method

.method private static getBaseType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .line 326
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 327
    .local v0, "index":I
    if-ltz v0, :cond_e

    .line 328
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 330
    :cond_e
    return-object p0
.end method

.method private static readObj(Ljava/lang/String;Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 358
    invoke-static {p0}, Landroid/app/slice/SliceItem;->getBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_c8

    :cond_b
    goto :goto_5f

    :sswitch_c
    const-string/jumbo v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_60

    :sswitch_17
    const-string v1, "input"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    goto :goto_60

    :sswitch_21
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_60

    :sswitch_2b
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_60

    :sswitch_36
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    goto :goto_60

    :sswitch_41
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_60

    :sswitch_4b
    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    goto :goto_60

    :sswitch_55
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_60

    :goto_5f
    const/4 v0, -0x1

    :goto_60
    packed-switch v0, :pswitch_data_ea

    .line 378
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :pswitch_7c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 374
    :pswitch_83
    sget-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 372
    :pswitch_8a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 370
    :pswitch_93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 366
    :pswitch_9c
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 367
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    sget-object v2, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 368
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/slice/Slice;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    return-object v0

    .line 364
    :pswitch_b2
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 362
    :pswitch_b9
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 360
    :pswitch_c0
    sget-object v0, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x54d081ca -> :sswitch_55
        -0x5220cf7e -> :sswitch_4b
        0x197ef -> :sswitch_41
        0x32c67c -> :sswitch_36
        0x36452d -> :sswitch_2b
        0x5faa95b -> :sswitch_21
        0x5fb57ca -> :sswitch_17
        0x6873d92 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_b9
        :pswitch_b2
        :pswitch_9c
        :pswitch_93
        :pswitch_8a
        :pswitch_83
        :pswitch_7c
    .end packed-switch
.end method

.method private static writeObj(Landroid/os/Parcel;ILjava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "flags"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/String;

    .line 334
    invoke-static {p3}, Landroid/app/slice/SliceItem;->getBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_9e

    :cond_b
    goto :goto_5f

    :sswitch_c
    const-string/jumbo v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_60

    :sswitch_17
    const-string v1, "input"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_60

    :sswitch_21
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_60

    :sswitch_2b
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    goto :goto_60

    :sswitch_36
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    goto :goto_60

    :sswitch_41
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    goto :goto_60

    :sswitch_4b
    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_60

    :sswitch_55
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_60

    :goto_5f
    const/4 v0, -0x1

    :goto_60
    packed-switch v0, :pswitch_data_c0

    goto :goto_9d

    .line 352
    :pswitch_64
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9d

    .line 349
    :pswitch_6f
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    goto :goto_9d

    .line 346
    :pswitch_7a
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 347
    goto :goto_9d

    .line 342
    :pswitch_81
    move-object v0, p2

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, p1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 343
    move-object v0, p2

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/slice/Slice;

    invoke-virtual {v0, p0, p1}, Landroid/app/slice/Slice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 344
    goto :goto_9d

    .line 339
    :pswitch_96
    move-object v0, p2

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0, p0, p1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 340
    nop

    .line 355
    :goto_9d
    return-void

    :sswitch_data_9e
    .sparse-switch
        -0x54d081ca -> :sswitch_55
        -0x5220cf7e -> :sswitch_4b
        0x197ef -> :sswitch_41
        0x32c67c -> :sswitch_36
        0x36452d -> :sswitch_2b
        0x5faa95b -> :sswitch_21
        0x5fb57ca -> :sswitch_17
        0x6873d92 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_81
        :pswitch_7a
        :pswitch_6f
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Landroid/app/PendingIntent;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getHints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getInt()I
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLong()J
    .registers 3

    .line 256
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteInput()Landroid/app/RemoteInput;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/app/RemoteInput;

    return-object v0
.end method

.method public getRemoteView()Landroid/widget/RemoteViews;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getSlice()Landroid/app/slice/Slice;
    .registers 3

    .line 246
    const-string v0, "action"

    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 247
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/slice/Slice;

    return-object v0

    .line 249
    :cond_15
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/app/slice/Slice;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAnyHints([Ljava/lang/String;)Z
    .registers 7
    .param p1, "hints"    # [Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 317
    :cond_4
    array-length v1, p1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 318
    .local v3, "hint":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 319
    const/4 v0, 0x1

    return v0

    .line 317
    .end local v3    # "hint":Ljava/lang/String;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 322
    :cond_17
    return v0
.end method

.method public hasHint(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hint"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasHints([Ljava/lang/String;)Z
    .registers 8
    .param p1, "hints"    # [Ljava/lang/String;

    .line 303
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 304
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_1d

    aget-object v4, p1, v3

    .line 305
    .local v4, "hint":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 306
    return v2

    .line 304
    .end local v4    # "hint":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 309
    :cond_1d
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 293
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Landroid/app/slice/SliceItem;->writeObj(Landroid/os/Parcel;ILjava/lang/Object;Ljava/lang/String;)V

    .line 297
    return-void
.end method
