.class public final Landroid/service/autofill/SaveInfo;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SaveInfo$Builder;,
        Landroid/service/autofill/SaveInfo$SaveInfoFlags;,
        Landroid/service/autofill/SaveInfo$SaveDataType;,
        Landroid/service/autofill/SaveInfo$PositiveButtonStyle;,
        Landroid/service/autofill/SaveInfo$NegativeButtonStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/SaveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_DELAY_SAVE:I = 0x4

.field public static final FLAG_DONT_SAVE_ON_FINISH:I = 0x2

.field public static final FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE:I = 0x1

.field public static final NEGATIVE_BUTTON_STYLE_CANCEL:I = 0x0

.field public static final NEGATIVE_BUTTON_STYLE_NEVER:I = 0x2

.field public static final NEGATIVE_BUTTON_STYLE_REJECT:I = 0x1

.field public static final POSITIVE_BUTTON_STYLE_CONTINUE:I = 0x1

.field public static final POSITIVE_BUTTON_STYLE_SAVE:I = 0x0

.field public static final SAVE_DATA_TYPE_ADDRESS:I = 0x2

.field public static final SAVE_DATA_TYPE_CREDIT_CARD:I = 0x4

.field public static final SAVE_DATA_TYPE_DEBIT_CARD:I = 0x20

.field public static final SAVE_DATA_TYPE_EMAIL_ADDRESS:I = 0x10

.field public static final SAVE_DATA_TYPE_GENERIC:I = 0x0

.field public static final SAVE_DATA_TYPE_GENERIC_CARD:I = 0x80

.field public static final SAVE_DATA_TYPE_PASSWORD:I = 0x1

.field public static final SAVE_DATA_TYPE_PAYMENT_CARD:I = 0x40

.field public static final SAVE_DATA_TYPE_USERNAME:I = 0x8

.field public static final SEM_NEGATIVE_BUTTON_STYLE_BOTH:I = 0x3e7


# instance fields
.field private final mCustomDescription:Landroid/service/autofill/CustomDescription;

.field private final mDescription:Ljava/lang/CharSequence;

.field private final mFlags:I

.field private final mNegativeActionListener:Landroid/content/IntentSender;

.field private final mNegativeButtonStyle:I

.field private final mOptionalIds:[Landroid/view/autofill/AutofillId;

.field private final mPositiveButtonStyle:I

.field private final mRequiredIds:[Landroid/view/autofill/AutofillId;

.field private final mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

.field private final mSanitizerValues:[[Landroid/view/autofill/AutofillId;

.field private final mSemNegativeSecondActionListener:Landroid/content/IntentSender;

.field private final mTriggerId:Landroid/view/autofill/AutofillId;

.field private final mType:I

.field private final mValidator:Landroid/service/autofill/InternalValidator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 965
    new-instance v0, Landroid/service/autofill/SaveInfo$1;

    invoke-direct {v0}, Landroid/service/autofill/SaveInfo$1;-><init>()V

    sput-object v0, Landroid/service/autofill/SaveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILandroid/content/IntentSender;Landroid/content/IntentSender;[Landroid/view/autofill/AutofillId;[Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;ILandroid/service/autofill/CustomDescription;Landroid/service/autofill/InternalValidator;[Landroid/service/autofill/InternalSanitizer;[[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "negativeButtonStyle"    # I
    .param p3, "positiveButtonStyle"    # I
    .param p4, "negativeActionListener"    # Landroid/content/IntentSender;
    .param p5, "SemNegativeSecondActionListener"    # Landroid/content/IntentSender;
    .param p6, "requiredIds"    # [Landroid/view/autofill/AutofillId;
    .param p7, "optionalIds"    # [Landroid/view/autofill/AutofillId;
    .param p8, "description"    # Ljava/lang/CharSequence;
    .param p9, "flags"    # I
    .param p10, "customDescription"    # Landroid/service/autofill/CustomDescription;
    .param p11, "validator"    # Landroid/service/autofill/InternalValidator;
    .param p12, "sanitizerKeys"    # [Landroid/service/autofill/InternalSanitizer;
    .param p13, "sanitizerValues"    # [[Landroid/view/autofill/AutofillId;
    .param p14, "triggerId"    # Landroid/view/autofill/AutofillId;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput p1, p0, Landroid/service/autofill/SaveInfo;->mType:I

    .line 365
    iput p2, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    .line 366
    iput-object p4, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    .line 367
    iput-object p5, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    .line 368
    iput p3, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    .line 369
    iput-object p6, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 370
    iput-object p7, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    .line 371
    iput-object p8, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    .line 372
    iput p9, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    .line 373
    iput-object p10, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    .line 374
    iput-object p11, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    .line 375
    iput-object p12, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    .line 376
    iput-object p13, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    .line 377
    iput-object p14, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    .line 378
    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/SaveInfo$Builder;)V
    .registers 6
    .param p1, "builder"    # Landroid/service/autofill/SaveInfo$Builder;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmType(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    .line 382
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmNegativeButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    .line 383
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmNegativeActionListener(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    .line 384
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSemNegativeSecondActionListener(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    .line 385
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmPositiveButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    .line 386
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmRequiredIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 387
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmOptionalIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    .line 388
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmDescription(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    .line 389
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmFlags(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    .line 390
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmCustomDescription(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/CustomDescription;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    .line 391
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmValidator(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/InternalValidator;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    .line 392
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_51

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    .line 394
    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    goto :goto_83

    .line 396
    :cond_51
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 397
    .local v0, "size":I
    new-array v1, v0, [Landroid/service/autofill/InternalSanitizer;

    iput-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    .line 398
    new-array v1, v0, [[Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    .line 399
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_62
    if-ge v1, v0, :cond_83

    .line 400
    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/InternalSanitizer;

    aput-object v3, v2, v1

    .line 401
    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/autofill/AutofillId;

    aput-object v3, v2, v1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 404
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_83
    :goto_83
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmTriggerId(Landroid/service/autofill/SaveInfo$Builder;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;)V

    return-void
.end method

.method public static copy(Landroid/service/autofill/SaveInfo;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo;
    .registers 19
    .param p0, "s"    # Landroid/service/autofill/SaveInfo;
    .param p1, "optionalIds"    # [Landroid/view/autofill/AutofillId;

    .line 352
    move-object/from16 v0, p0

    new-instance v16, Landroid/service/autofill/SaveInfo;

    iget v2, v0, Landroid/service/autofill/SaveInfo;->mType:I

    iget v3, v0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    iget v4, v0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    iget-object v5, v0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    iget-object v6, v0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    iget-object v7, v0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 353
    invoke-static/range {p1 .. p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v8

    iget-object v9, v0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    iget v10, v0, Landroid/service/autofill/SaveInfo;->mFlags:I

    iget-object v11, v0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    iget-object v12, v0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    iget-object v13, v0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    iget-object v14, v0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    iget-object v15, v0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Landroid/service/autofill/SaveInfo;-><init>(IIILandroid/content/IntentSender;Landroid/content/IntentSender;[Landroid/view/autofill/AutofillId;[Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;ILandroid/service/autofill/CustomDescription;Landroid/service/autofill/InternalValidator;[Landroid/service/autofill/InternalSanitizer;[[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    .line 352
    return-object v16
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 936
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomDescription()Landroid/service/autofill/CustomDescription;
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .line 446
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    return v0
.end method

.method public getNegativeActionListener()Landroid/content/IntentSender;
    .registers 2

    .line 414
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method public getNegativeActionStyle()I
    .registers 2

    .line 409
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    return v0
.end method

.method public getOptionalIds()[Landroid/view/autofill/AutofillId;
    .registers 2

    .line 436
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getPositiveActionStyle()I
    .registers 2

    .line 426
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    return v0
.end method

.method public getRequiredIds()[Landroid/view/autofill/AutofillId;
    .registers 2

    .line 431
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;
    .registers 2

    .line 469
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    return-object v0
.end method

.method public getSanitizerValues()[[Landroid/view/autofill/AutofillId;
    .registers 2

    .line 475
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getTriggerId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 481
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 441
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    return v0
.end method

.method public getValidator()Landroid/service/autofill/InternalValidator;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object v0
.end method

.method public semGetNegativeSecondActionListener()Landroid/content/IntentSender;
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 893
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 895
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SaveInfo: [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mType:I

    int-to-long v1, v1

    .line 896
    const-class v3, Landroid/service/autofill/SaveInfo;

    const-string v4, "SAVE_DATA_TYPE_"

    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 897
    const-string v1, ", requiredIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 898
    const-string v1, ", negative style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    int-to-long v1, v1

    const-string v4, "NEGATIVE_BUTTON_STYLE_"

    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 900
    const-string v1, ", positive style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    int-to-long v1, v1

    const-string v4, "POSITIVE_BUTTON_STYLE_"

    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 902
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_68

    .line 903
    const-string v1, ", optionalIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :cond_68
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_77

    .line 906
    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 908
    :cond_77
    iget v1, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    if-eqz v1, :cond_86

    .line 909
    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 911
    :cond_86
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    if-eqz v1, :cond_95

    .line 912
    const-string v1, ", customDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 914
    :cond_95
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    if-eqz v1, :cond_a4

    .line 915
    const-string v1, ", validator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 917
    :cond_a4
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    if-eqz v1, :cond_b4

    .line 918
    const-string v1, ", sanitizerKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 920
    :cond_b4
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_c4

    .line 921
    const-string v1, ", sanitizerValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 923
    :cond_c4
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_d3

    .line 924
    const-string v1, ", triggerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 927
    :cond_d3
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 941
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 943
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 944
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 948
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 951
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 953
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 954
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 955
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 956
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    if-eqz v0, :cond_49

    .line 957
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    array-length v2, v1

    if-ge v0, v2, :cond_49

    .line 958
    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 961
    .end local v0    # "i":I
    :cond_49
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 962
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    return-void
.end method
