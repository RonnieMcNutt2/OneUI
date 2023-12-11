.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x1

.field public static final TYPE_BROTHER:I = 0x2

.field public static final TYPE_CHILD:I = 0x3

.field public static final TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final TYPE_FATHER:I = 0x5

.field public static final TYPE_FRIEND:I = 0x6

.field public static final TYPE_MANAGER:I = 0x7

.field public static final TYPE_MOTHER:I = 0x8

.field public static final TYPE_PARENT:I = 0x9

.field public static final TYPE_PARTNER:I = 0xa

.field public static final TYPE_REFERRED_BY:I = 0xb

.field public static final TYPE_RELATIVE:I = 0xc

.field public static final TYPE_SISTER:I = 0xd

.field public static final TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 7360
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7361
    return-object p2

    .line 7363
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    .line 7364
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2
    .param p0, "type"    # I

    .line 7332
    packed-switch p0, :pswitch_data_40

    .line 7349
    const v0, 0x10408a6

    return v0

    .line 7348
    :pswitch_7
    const v0, 0x1040bbe

    return v0

    .line 7347
    :pswitch_b
    const v0, 0x1040bbd

    return v0

    .line 7346
    :pswitch_f
    const v0, 0x1040bbc

    return v0

    .line 7345
    :pswitch_13
    const v0, 0x1040bbb

    return v0

    .line 7343
    :pswitch_17
    const v0, 0x1040bba

    return v0

    .line 7342
    :pswitch_1b
    const v0, 0x1040bb9

    return v0

    .line 7341
    :pswitch_1f
    const v0, 0x1040bb8

    return v0

    .line 7340
    :pswitch_23
    const v0, 0x1040bb7

    return v0

    .line 7339
    :pswitch_27
    const v0, 0x1040bb6

    return v0

    .line 7338
    :pswitch_2b
    const v0, 0x1040bb5

    return v0

    .line 7337
    :pswitch_2f
    const v0, 0x1040bb4

    return v0

    .line 7335
    :pswitch_33
    const v0, 0x1040bb2

    return v0

    .line 7334
    :pswitch_37
    const v0, 0x1040bb1

    return v0

    .line 7333
    :pswitch_3b
    const v0, 0x1040bb0

    return v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
