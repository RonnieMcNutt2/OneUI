.class public final Landroid/service/autofill/Dataset;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/Dataset$Builder;,
        Landroid/service/autofill/Dataset$DatasetFieldFilter;,
        Landroid/service/autofill/Dataset$DatasetEligibleReason;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field public static final PICK_REASON_NO_PCC:I = 0x1

.field public static final PICK_REASON_PCC_DETECTION_ONLY:I = 0x4

.field public static final PICK_REASON_PCC_DETECTION_PREFERRED_WITH_PROVIDER:I = 0x5

.field public static final PICK_REASON_PROVIDER_DETECTION_ONLY:I = 0x2

.field public static final PICK_REASON_PROVIDER_DETECTION_PREFERRED_WITH_PCC:I = 0x3

.field public static final PICK_REASON_UNKNOWN:I


# instance fields
.field private final mAuthentication:Landroid/content/IntentSender;

.field private final mAutofillDatatypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDialogPresentation:Landroid/widget/RemoteViews;

.field private mEligibleReason:I

.field private final mFieldContent:Landroid/content/ClipData;

.field private final mFieldDialogPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final mFieldFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final mFieldInlinePresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mFieldInlineTooltipPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mFieldPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final mFieldValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field mId:Ljava/lang/String;

.field private final mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private final mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private final mPresentation:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic -$$Nest$fputmEligibleReason(Landroid/service/autofill/Dataset;I)V
    .registers 2

    iput p1, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1366
    new-instance v0, Landroid/service/autofill/Dataset$1;

    invoke-direct {v0}, Landroid/service/autofill/Dataset$1;-><init>()V

    sput-object v0, Landroid/service/autofill/Dataset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/Dataset$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/service/autofill/Dataset$Builder;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldIds(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    .line 253
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldValues(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    .line 254
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    .line 255
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldDialogPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 256
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldInlinePresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 257
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldInlineTooltipPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 258
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldFilters(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    .line 259
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldContent(Landroid/service/autofill/Dataset$Builder;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    .line 260
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    .line 261
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmDialogPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 262
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmInlinePresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 263
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmInlineTooltipPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 264
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmAuthentication(Landroid/service/autofill/Dataset$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    .line 265
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmId(Landroid/service/autofill/Dataset$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    .line 266
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmAutofillDatatypes(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    .line 267
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/Dataset$Builder;Landroid/service/autofill/Dataset-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/Dataset;-><init>(Landroid/service/autofill/Dataset$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/service/autofill/Dataset;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/Dataset;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    .line 235
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    .line 236
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    .line 237
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 238
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 239
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 240
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    .line 241
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    .line 242
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    .line 243
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 244
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 245
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 246
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    .line 247
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ClipData;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 16
    .param p9, "fieldContent"    # Landroid/content/ClipData;
    .param p10, "presentation"    # Landroid/widget/RemoteViews;
    .param p11, "dialogPresentation"    # Landroid/widget/RemoteViews;
    .param p12, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p13, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p14, "id"    # Ljava/lang/String;
    .param p15, "authentication"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ClipData;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/service/autofill/InlinePresentation;",
            "Landroid/service/autofill/InlinePresentation;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 210
    .local p1, "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "fieldValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local p3, "fieldPresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    .local p4, "fieldDialogPresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    .local p5, "fieldInlinePresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/InlinePresentation;>;"
    .local p6, "fieldInlineTooltipPresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/InlinePresentation;>;"
    .local p7, "fieldFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/Dataset$DatasetFieldFilter;>;"
    .local p8, "autofillDatatypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    .line 212
    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    .line 213
    iput-object p3, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    .line 214
    iput-object p4, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 215
    iput-object p5, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 216
    iput-object p6, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 217
    iput-object p8, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    .line 218
    iput-object p7, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    .line 219
    iput-object p9, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    .line 220
    iput-object p10, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    .line 221
    iput-object p11, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 222
    iput-object p12, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 223
    iput-object p13, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 224
    iput-object p15, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    .line 225
    iput-object p14, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    .line 226
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1343
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthentication()Landroid/content/IntentSender;
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    return-object v0
.end method

.method public getAutofillDatatypes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEligibleReason()I
    .registers 2

    .line 433
    iget v0, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    return v0
.end method

.method public getFieldContent()Landroid/content/ClipData;
    .registers 2

    .line 336
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    return-object v0
.end method

.method public getFieldDialogPresentation(I)Landroid/widget/RemoteViews;
    .registers 4
    .param p1, "index"    # I

    .line 300
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 301
    .local v0, "customPresentation":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_e

    :cond_c
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    :goto_e
    return-object v1
.end method

.method public getFieldIds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;
    .registers 4
    .param p1, "index"    # I

    .line 307
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InlinePresentation;

    .line 308
    .local v0, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_e

    :cond_c
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    :goto_e
    return-object v1
.end method

.method public getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;
    .registers 4
    .param p1, "index"    # I

    .line 314
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InlinePresentation;

    .line 316
    .local v0, "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    if-eqz v0, :cond_c

    .line 317
    move-object v1, v0

    goto :goto_e

    :cond_c
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 316
    :goto_e
    return-object v1
.end method

.method public getFieldPresentation(I)Landroid/widget/RemoteViews;
    .registers 4
    .param p1, "index"    # I

    .line 293
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 294
    .local v0, "customPresentation":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_e

    :cond_c
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    :goto_e
    return-object v1
.end method

.method public getFieldValues()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .registers 3
    .param p1, "index"    # I

    .line 323
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 417
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 348
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public setEligibleReasonReason(I)V
    .registers 2
    .param p1, "eligibleReason"    # I

    .line 425
    iput p1, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    .line 426
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 353
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dataset["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 357
    const-string/jumbo v1, "noId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 360
    :cond_1b
    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :goto_31
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_40

    .line 363
    const-string v1, ", fieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    :cond_40
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_4f

    .line 366
    const-string v1, ", fieldValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    :cond_4f
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    if-eqz v1, :cond_5e

    .line 369
    const-string v1, ", fieldContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    :cond_5e
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_71

    .line 372
    const-string v1, ", fieldPresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    :cond_71
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_84

    .line 375
    const-string v1, ", fieldDialogPresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    :cond_84
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_97

    .line 378
    const-string v1, ", fieldInlinePresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    :cond_97
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_aa

    .line 381
    const-string v1, ", fieldInlineTooltipInlinePresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 382
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    :cond_aa
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_bd

    .line 385
    const-string v1, ", fieldFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    :cond_bd
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_c6

    .line 388
    const-string v1, ", hasPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_c6
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_cf

    .line 391
    const-string v1, ", hasDialogPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_cf
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v1, :cond_d8

    .line 394
    const-string v1, ", hasInlinePresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_d8
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v1, :cond_e1

    .line 397
    const-string v1, ", hasInlineTooltipPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_e1
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    if-eqz v1, :cond_ea

    .line 400
    const-string v1, ", hasAuthentication"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_ea
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_f9

    .line 403
    const-string v1, ", autofillDatatypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    :cond_f9
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1348
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1349
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1350
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1351
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1352
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1353
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1354
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1355
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1356
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1357
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1358
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1359
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1360
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1361
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1362
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1363
    iget v0, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1364
    return-void
.end method
