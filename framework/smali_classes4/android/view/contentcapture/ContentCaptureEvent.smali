.class public final Landroid/view/contentcapture/ContentCaptureEvent;
.super Ljava/lang/Object;
.source "ContentCaptureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureEvent$EventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_INVALID_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_CONTEXT_UPDATED:I = 0x6

.field public static final TYPE_SESSION_FINISHED:I = -0x2

.field public static final TYPE_SESSION_PAUSED:I = 0x8

.field public static final TYPE_SESSION_RESUMED:I = 0x7

.field public static final TYPE_SESSION_STARTED:I = -0x1

.field public static final TYPE_VIEW_APPEARED:I = 0x1

.field public static final TYPE_VIEW_DISAPPEARED:I = 0x2

.field public static final TYPE_VIEW_INSETS_CHANGED:I = 0x9

.field public static final TYPE_VIEW_TEXT_CHANGED:I = 0x3

.field public static final TYPE_VIEW_TREE_APPEARED:I = 0x5

.field public static final TYPE_VIEW_TREE_APPEARING:I = 0x4

.field public static final TYPE_WINDOW_BOUNDS_CHANGED:I = 0xa


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

.field private mComposingEnd:I

.field private mComposingStart:I

.field private final mEventTime:J

.field private mId:Landroid/view/autofill/AutofillId;

.field private mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mInsets:Landroid/graphics/Insets;

.field private mNode:Landroid/view/contentcapture/ViewNode;

.field private mParentSessionId:I

.field private mSelectionEndIndex:I

.field private mSelectionStartIndex:I

.field private final mSessionId:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextHasComposingSpan:Z

.field private final mType:I


# direct methods
.method static bridge synthetic -$$Nest$mrestoreComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureEvent;->restoreComposingSpan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreSelectionSpans(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureEvent;->restoreSelectionSpans()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    .line 622
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureEvent$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "type"    # I

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(IIJ)V

    .line 189
    return-void
.end method

.method public constructor <init>(IIJ)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "type"    # I
    .param p3, "eventTime"    # J

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    .line 172
    iput v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    .line 173
    iput v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    .line 174
    iput v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    .line 181
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    .line 182
    iput p2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    .line 183
    iput-wide p3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mEventTime:J

    .line 184
    return-void
.end method

.method private getComposingEnd()I
    .registers 2

    .line 320
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    return v0
.end method

.method private getComposingStart()I
    .registers 2

    .line 316
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    return v0
.end method

.method private getSelectionEnd()I
    .registers 2

    .line 328
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    return v0
.end method

.method private getSelectionStart()I
    .registers 2

    .line 324
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    return v0
.end method

.method public static getTypeAsString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 675
    packed-switch p0, :pswitch_data_3c

    .line 701
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UKNOWN_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 699
    :pswitch_17
    const-string v0, "TYPE_WINDOW_BOUNDS_CHANGED"

    return-object v0

    .line 697
    :pswitch_1a
    const-string v0, "VIEW_INSETS_CHANGED"

    return-object v0

    .line 683
    :pswitch_1d
    const-string v0, "SESSION_PAUSED"

    return-object v0

    .line 681
    :pswitch_20
    const-string v0, "SESSION_RESUMED"

    return-object v0

    .line 695
    :pswitch_23
    const-string v0, "CONTEXT_UPDATED"

    return-object v0

    .line 693
    :pswitch_26
    const-string v0, "VIEW_TREE_APPEARED"

    return-object v0

    .line 691
    :pswitch_29
    const-string v0, "VIEW_TREE_APPEARING"

    return-object v0

    .line 689
    :pswitch_2c
    const-string v0, "VIEW_TEXT_CHANGED"

    return-object v0

    .line 687
    :pswitch_2f
    const-string v0, "VIEW_DISAPPEARED"

    return-object v0

    .line 685
    :pswitch_32
    const-string v0, "VIEW_APPEARED"

    return-object v0

    .line 677
    :pswitch_35
    const-string v0, "SESSION_STARTED"

    return-object v0

    .line 679
    :pswitch_38
    const-string v0, "SESSION_FINISHED"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch -0x2
        :pswitch_38
        :pswitch_35
        :pswitch_3
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private restoreComposingSpan()V
    .registers 5

    .line 332
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1e

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    if-gt v2, v1, :cond_a

    goto :goto_1e

    .line 336
    :cond_a
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    instance-of v3, v1, Landroid/text/Spannable;

    if-eqz v3, :cond_16

    .line 337
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0, v2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    goto :goto_1d

    .line 340
    :cond_16
    sget-object v0, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    const-string v1, "Text is not a Spannable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_1d
    return-void

    .line 334
    :cond_1e
    :goto_1e
    return-void
.end method

.method private restoreSelectionSpans()V
    .registers 5

    .line 345
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2a

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    if-gt v0, v1, :cond_a

    goto :goto_2a

    .line 350
    :cond_a
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_22

    .line 351
    check-cast v0, Landroid/text/SpannableString;

    .line 352
    .local v0, "ss":Landroid/text/SpannableString;
    sget-object v1, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 353
    sget-object v1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 354
    .end local v0    # "ss":Landroid/text/SpannableString;
    goto :goto_29

    .line 355
    :cond_22
    sget-object v0, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    const-string v1, "Text is not a SpannableString."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_29
    return-void

    .line 347
    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public addAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 5
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    if-nez v0, :cond_37

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    .line 212
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_31

    .line 213
    sget-object v0, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAutofillId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") called without an initial id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 215
    :cond_31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    .line 219
    :cond_37
    :goto_37
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    return-object p0
.end method

.method public describeContents()I
    .registers 2

    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 500
    const-string/jumbo v0, "type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    const-string v0, ", time="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 502
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    if-eqz v0, :cond_27

    .line 503
    const-string v0, ", id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 505
    :cond_27
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_35

    .line 506
    const-string v0, ", ids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 508
    :cond_35
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    if-eqz v0, :cond_47

    .line 509
    const-string v0, ", mNode.id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 511
    :cond_47
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    if-eqz v0, :cond_55

    .line 512
    const-string v0, ", sessionId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 514
    :cond_55
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    if-eqz v0, :cond_63

    .line 515
    const-string v0, ", parentSessionId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 517
    :cond_63
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_75

    .line 518
    const-string v0, ", text="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    :cond_75
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    if-eqz v0, :cond_86

    .line 521
    const-string v0, ", context="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 523
    :cond_86
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    if-eqz v0, :cond_94

    .line 524
    const-string v0, ", insets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 526
    :cond_94
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a2

    .line 527
    const-string v0, ", bounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 529
    :cond_a2
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    const-string v1, ")"

    const-string v2, ", "

    const/4 v3, -0x1

    if-le v0, v3, :cond_c0

    .line 530
    const-string v0, ", composing("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 531
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    :cond_c0
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    if-le v0, v3, :cond_d9

    .line 534
    const-string v0, ", selection("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 535
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    :cond_d9
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 452
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    return-object v0
.end method

.method public getEventTime()J
    .registers 3

    .line 389
    iget-wide v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mEventTime:J

    return-wide v0
.end method

.method public getId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 411
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Insets;
    .registers 2

    .line 442
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getParentSessionId()I
    .registers 2

    .line 256
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    return v0
.end method

.method public getSessionId()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 432
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 382
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    return v0
.end method

.method public getViewNode()Landroid/view/contentcapture/ViewNode;
    .registers 2

    .line 399
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    return-object v0
.end method

.method public hasComposingSpan()Z
    .registers 3

    .line 295
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method hasSameComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z
    .registers 4
    .param p1, "other"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 307
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    iget v1, p1, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    iget v1, p1, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method hasSameSelectionSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z
    .registers 4
    .param p1, "other"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 311
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    iget v1, p1, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    iget v1, p1, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public mergeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 462
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v0

    .line 464
    .local v0, "eventType":I
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const-string/jumbo v2, "mergeEvent("

    if-eq v1, v0, :cond_39

    .line 465
    sget-object v1, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") cannot be merged with different eventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    .line 466
    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void

    .line 470
    :cond_39
    const/4 v1, 0x2

    if-ne v0, v1, :cond_94

    .line 471
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getIds()Ljava/util/List;

    move-result-object v1

    .line 472
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 473
    .local v2, "id":Landroid/view/autofill/AutofillId;
    if-eqz v1, :cond_74

    .line 474
    if-eqz v2, :cond_60

    .line 475
    sget-object v3, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got TYPE_VIEW_DISAPPEARED event with both id and ids: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_60
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_61
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_73

    .line 478
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, v4}, Landroid/view/contentcapture/ContentCaptureEvent;->addAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 480
    .end local v3    # "i":I
    :cond_73
    return-void

    .line 482
    :cond_74
    if-eqz v2, :cond_7a

    .line 483
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/ContentCaptureEvent;->addAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 484
    return-void

    .line 486
    :cond_7a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mergeEvent(): got TYPE_VIEW_DISAPPEARED event with neither id or ids: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 488
    .end local v1    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "id":Landroid/view/autofill/AutofillId;
    :cond_94
    const/4 v1, 0x3

    if-ne v0, v1, :cond_b5

    .line 489
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 490
    invoke-direct {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getComposingStart()I

    move-result v1

    invoke-direct {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getComposingEnd()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/contentcapture/ContentCaptureEvent;->setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 491
    invoke-direct {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSelectionStart()I

    move-result v1

    invoke-direct {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    goto :goto_d5

    .line 493
    :cond_b5
    sget-object v1, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not support this event type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_d5
    return-void
.end method

.method public setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 3
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    .line 194
    return-object p0
.end method

.method public setAutofillIds(Ljava/util/ArrayList;)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)",
            "Landroid/view/contentcapture/ContentCaptureEvent;"
        }
    .end annotation

    .line 199
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    .line 200
    return-object p0
.end method

.method public setBounds(Landroid/graphics/Rect;)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 369
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    .line 370
    return-object p0
.end method

.method public setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 2
    .param p1, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 239
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 240
    return-object p0
.end method

.method public setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 287
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    .line 288
    iput p2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    .line 289
    return-object p0
.end method

.method public setInsets(Landroid/graphics/Insets;)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 2
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 362
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    .line 363
    return-object p0
.end method

.method public setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 2
    .param p1, "parentSessionId"    # I

    .line 229
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    .line 230
    return-object p0
.end method

.method public setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 301
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    .line 302
    iput p2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    .line 303
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 280
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    .line 281
    return-object p0
.end method

.method public setViewNode(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ContentCaptureEvent;
    .registers 3
    .param p1, "node"    # Landroid/view/contentcapture/ViewNode;

    .line 273
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ViewNode;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    .line 274
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentCaptureEvent[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    .line 543
    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 544
    .local v0, "string":Ljava/lang/StringBuilder;
    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 545
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    if-eqz v1, :cond_30

    .line 546
    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    :cond_30
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    const-string v3, ", id="

    if-eqz v1, :cond_3f

    .line 549
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    :cond_3f
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_4e

    .line 552
    const-string v1, ", ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    :cond_4e
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    const-string v4, ", text="

    if-eqz v1, :cond_87

    .line 555
    invoke-virtual {v1}, Landroid/view/contentcapture/ViewNode;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "className":Ljava/lang/String;
    const-string v5, ", class="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v5}, Landroid/view/contentcapture/ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v3}, Landroid/view/contentcapture/ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_87

    .line 559
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    .line 560
    invoke-virtual {v5}, Landroid/view/contentcapture/ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/view/contentcapture/ContentCaptureHelper;->getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 563
    .end local v1    # "className":Ljava/lang/String;
    :cond_87
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_98

    .line 564
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    .line 565
    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureHelper;->getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 567
    :cond_98
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    if-eqz v1, :cond_a7

    .line 568
    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 570
    :cond_a7
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    if-eqz v1, :cond_b6

    .line 571
    const-string v1, ", insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 573
    :cond_b6
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_c5

    .line 574
    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 576
    :cond_c5
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    const-string v3, "]"

    const-string v4, ","

    if-le v1, v2, :cond_e6

    .line 577
    const-string v1, ", composing=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    .line 578
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_e6
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    if-le v1, v2, :cond_103

    .line 581
    const-string v1, ", selection=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    .line 582
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    .line 583
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_103
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 595
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget-wide v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 598
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 599
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 600
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1, v0, p2}, Landroid/view/contentcapture/ViewNode;->writeToParcel(Landroid/os/Parcel;Landroid/view/contentcapture/ViewNode;I)V

    .line 601
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 602
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    const/4 v2, -0x2

    if-ne v0, v2, :cond_30

    .line 603
    :cond_2b
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    :cond_30
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    if-eq v0, v1, :cond_37

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3c

    .line 606
    :cond_37
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 608
    :cond_3c
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_47

    .line 609
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 611
    :cond_47
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_52

    .line 612
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 614
    :cond_52
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6b

    .line 615
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    :cond_6b
    return-void
.end method
