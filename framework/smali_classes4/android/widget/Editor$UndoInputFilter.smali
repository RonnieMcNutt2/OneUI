.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter$MergeMode;
    }
.end annotation


# static fields
.field private static final MERGE_EDIT_MODE_FORCE_MERGE:I = 0x0

.field private static final MERGE_EDIT_MODE_NEVER_MERGE:I = 0x1

.field private static final MERGE_EDIT_MODE_NORMAL:I = 0x2


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mExpanding:Z

.field private mHasComposition:Z

.field private mIsUserEdit:Z

.field private mPreviousOperationWasInSameBatchEdit:Z


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .registers 2
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 9258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9259
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 9260
    return-void
.end method

.method private canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .registers 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 9411
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mAllowUndo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 9413
    return v1

    .line 9416
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 9418
    return v1

    .line 9424
    :cond_15
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->-$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->-$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_29

    .line 9431
    :cond_22
    if-ne p2, p3, :cond_27

    if-ne p5, p6, :cond_27

    .line 9433
    return v1

    .line 9436
    :cond_27
    const/4 v0, 0x1

    return v0

    .line 9426
    :cond_29
    :goto_29
    return v1
.end method

.method private getLastEdit()Landroid/widget/Editor$EditOperation;
    .registers 5

    .line 9368
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 9369
    .local v0, "um":Landroid/content/UndoManager;
    const-class v1, Landroid/widget/Editor$EditOperation;

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v1

    check-cast v1, Landroid/widget/Editor$EditOperation;

    return-object v1
.end method

.method private handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V
    .registers 19
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I
    .param p7, "shouldCreateSeparateState"    # Z

    .line 9349
    move-object v0, p0

    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    move-result v1

    if-nez v1, :cond_12

    iget-boolean v1, v0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    if-eqz v1, :cond_c

    goto :goto_12

    .line 9351
    :cond_c
    if-eqz p7, :cond_10

    .line 9352
    const/4 v1, 0x1

    .local v1, "mergeMode":I
    goto :goto_13

    .line 9354
    .end local v1    # "mergeMode":I
    :cond_10
    const/4 v1, 0x2

    .restart local v1    # "mergeMode":I
    goto :goto_13

    .line 9350
    .end local v1    # "mergeMode":I
    :cond_12
    :goto_12
    const/4 v1, 0x0

    .line 9357
    .restart local v1    # "mergeMode":I
    :goto_13
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v8

    .line 9358
    .local v8, "newText":Ljava/lang/String;
    invoke-static/range {p4 .. p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v9

    .line 9359
    .local v9, "oldText":Ljava/lang/String;
    new-instance v10, Landroid/widget/Editor$EditOperation;

    iget-object v3, v0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    move-object v2, v10

    move-object v4, v9

    move/from16 v5, p5

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 9361
    .local v2, "edit":Landroid/widget/Editor$EditOperation;
    iget-boolean v3, v0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    if-eqz v3, :cond_3c

    invoke-static {v2}, Landroid/widget/Editor$EditOperation;->-$$Nest$fgetmNewText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/widget/Editor$EditOperation;->-$$Nest$fgetmOldText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 9362
    return-void

    .line 9364
    :cond_3c
    invoke-direct {p0, v2, v1}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;I)V

    .line 9365
    return-void
.end method

.method private static isComposition(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 9440
    instance-of v0, p0, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 9441
    return v1

    .line 9444
    :cond_6
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    .line 9445
    .local v0, "text":Landroid/text/Spannable;
    invoke-static {v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 9446
    .local v2, "composeBegin":I
    invoke-static {v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 9447
    .local v3, "composeEnd":I
    if-ge v2, v3, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private isHangul(Landroid/text/Spanned;)Z
    .registers 7
    .param p1, "dest"    # Landroid/text/Spanned;

    .line 9458
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    .line 9459
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 9460
    .local v0, "lastChar":C
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_39

    .line 9461
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_39

    .line 9462
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_39

    .line 9463
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_39

    .line 9464
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-ne v3, v4, :cond_3a

    :cond_39
    move v1, v2

    .line 9460
    :cond_3a
    return v1

    .line 9466
    .end local v0    # "lastChar":C
    :cond_3b
    return v1
.end method

.method private isInTextWatcher()Z
    .registers 3

    .line 9451
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9452
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_19

    move-object v1, v0

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 9453
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 9452
    :goto_1a
    return v1
.end method

.method private recordEdit(Landroid/widget/Editor$EditOperation;I)V
    .registers 7
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;
    .param p2, "mergeMode"    # I

    .line 9378
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 9379
    .local v0, "um":Landroid/content/UndoManager;
    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 9380
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v1

    .line 9381
    .local v1, "lastEdit":Landroid/widget/Editor$EditOperation;
    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 9384
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_43

    .line 9385
    :cond_16
    if-nez p2, :cond_1c

    .line 9389
    invoke-virtual {v1, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    goto :goto_43

    .line 9390
    :cond_1c
    iget-boolean v3, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-nez v3, :cond_2d

    .line 9394
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 9395
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_43

    .line 9396
    :cond_2d
    const/4 v3, 0x2

    if-ne p2, v3, :cond_37

    invoke-static {v1, p1}, Landroid/widget/Editor$EditOperation;->-$$Nest$mmergeWith(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_43

    .line 9402
    :cond_37
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 9403
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 9405
    :goto_43
    iget-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    iput-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 9406
    invoke-virtual {v0}, Landroid/content/UndoManager;->endUpdate()V

    .line 9407
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .registers 2

    .line 9281
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 9282
    return-void
.end method

.method public endBatchEdit()V
    .registers 2

    .line 9286
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 9287
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 9288
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 21
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 9299
    move-object v8, p0

    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_9

    .line 9300
    return-object v9

    .line 9303
    :cond_9
    iget-boolean v10, v8, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 9304
    .local v10, "hadComposition":Z
    invoke-static {p1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, v8, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 9305
    iget-boolean v11, v8, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 9306
    .local v11, "wasExpanding":Z
    const/4 v0, 0x0

    .line 9307
    .local v0, "shouldCreateSeparateState":Z
    sub-int v1, p3, p2

    sub-int v2, p6, p5

    if-eq v1, v2, :cond_37

    .line 9308
    sub-int v1, p3, p2

    sub-int v2, p6, p5

    if-le v1, v2, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    iput-boolean v1, v8, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 9310
    if-eqz v10, :cond_34

    if-eq v1, v11, :cond_34

    move-object/from16 v12, p4

    invoke-direct {p0, v12}, Landroid/widget/Editor$UndoInputFilter;->isHangul(Landroid/text/Spanned;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 9311
    const/4 v0, 0x1

    move v13, v0

    goto :goto_3a

    .line 9310
    :cond_34
    move-object/from16 v12, p4

    goto :goto_39

    .line 9307
    :cond_37
    move-object/from16 v12, p4

    .line 9316
    :cond_39
    :goto_39
    move v13, v0

    .end local v0    # "shouldCreateSeparateState":Z
    .local v13, "shouldCreateSeparateState":Z
    :goto_3a
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, v13

    invoke-direct/range {v0 .. v7}, Landroid/widget/Editor$UndoInputFilter;->handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V

    .line 9317
    return-object v9
.end method

.method freezeLastEdit()V
    .registers 3

    .line 9321
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 9322
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v0

    .line 9323
    .local v0, "lastEdit":Landroid/widget/Editor$EditOperation;
    if-eqz v0, :cond_15

    .line 9324
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/Editor$EditOperation;->-$$Nest$fputmFrozen(Landroid/widget/Editor$EditOperation;Z)V

    .line 9326
    :cond_15
    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/UndoManager;->endUpdate()V

    .line 9327
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 9270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 9271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 9272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 9273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 9274
    return-void
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 9263
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9264
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9265
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9266
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9267
    return-void
.end method
