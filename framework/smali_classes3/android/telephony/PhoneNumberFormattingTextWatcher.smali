.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mStopFormatting:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 73
    if-eqz p1, :cond_13

    .line 74
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    .line 75
    return-void

    .line 73
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private getFormattedNumber(CZ)Ljava/lang/String;
    .registers 4
    .param p1, "lastNonSeparator"    # C
    .param p2, "hasCursor"    # Z

    .line 176
    if-eqz p2, :cond_9

    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 177
    :cond_9
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_f
    return-object v0
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 186
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_14

    .line 187
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 188
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_11

    .line 189
    const/4 v2, 0x1

    return v2

    .line 186
    .end local v1    # "c":C
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .line 150
    add-int/lit8 v0, p2, -0x1

    .line 151
    .local v0, "curIndex":I
    const/4 v1, 0x0

    .line 152
    .local v1, "formatted":Ljava/lang/String;
    iget-object v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, "lastNonSeparator":C
    const/4 v3, 0x0

    .line 155
    .local v3, "hasCursor":Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 156
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f
    if-ge v5, v4, :cond_29

    .line 157
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 158
    .local v6, "c":C
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 159
    if-eqz v2, :cond_22

    .line 160
    invoke-direct {p0, v2, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v1

    .line 161
    const/4 v3, 0x0

    .line 163
    :cond_22
    move v2, v6

    .line 165
    :cond_23
    if-ne v5, v0, :cond_26

    .line 166
    const/4 v3, 0x1

    .line 156
    .end local v6    # "c":C
    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 169
    .end local v5    # "i":I
    :cond_29
    if-eqz v2, :cond_2f

    .line 170
    invoke-direct {p0, v2, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_2f
    return-object v1
.end method

.method private stopFormatting()V
    .registers 2

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    .line 182
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 183
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .registers 12
    .param p1, "s"    # Landroid/text/Editable;

    monitor-enter p0

    .line 102
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 104
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    iput-boolean v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_71

    .line 105
    monitor-exit p0

    return-void

    .line 107
    .end local p0    # "this":Landroid/telephony/PhoneNumberFormattingTextWatcher;
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_71

    if-eqz v0, :cond_19

    .line 109
    monitor-exit p0

    return-void

    .line 115
    .restart local p0    # "this":Landroid/telephony/PhoneNumberFormattingTextWatcher;
    :cond_19
    const/4 v0, 0x0

    .line 117
    .local v0, "formatted":Ljava/lang/String;
    :try_start_1a
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_22} :catch_24
    .catchall {:try_start_1a .. :try_end_22} :catchall_71

    move-object v0, v3

    .line 120
    goto :goto_28

    .line 118
    .end local p0    # "this":Landroid/telephony/PhoneNumberFormattingTextWatcher;
    :catch_24
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_25
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 122
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_28
    if-eqz v0, :cond_50

    .line 123
    iget-object v3, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    move-result v3

    .line 124
    .local v3, "rememberedPos":I
    iput-boolean v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 125
    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    move-object v4, p1

    move-object v7, v0

    invoke-interface/range {v4 .. v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 129
    invoke-static {p1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 131
    :cond_4e
    iput-boolean v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 135
    .end local v3    # "rememberedPos":I
    :cond_50
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Landroid/text/style/TtsSpan;

    invoke-interface {p1, v2, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/TtsSpan;

    .line 136
    .local v1, "ttsSpans":[Landroid/text/style/TtsSpan;
    array-length v3, v1

    move v4, v2

    :goto_5e
    if-ge v4, v3, :cond_68

    aget-object v5, v1, v4

    .line 137
    .local v5, "ttsSpan":Landroid/text/style/TtsSpan;
    invoke-interface {p1, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 136
    .end local v5    # "ttsSpan":Landroid/text/style/TtsSpan;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 140
    :cond_68
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    :try_end_6f
    .catchall {:try_start_25 .. :try_end_6f} :catchall_71

    .line 141
    monitor-exit p0

    return-void

    .line 101
    .end local v0    # "formatted":Ljava/lang/String;
    .end local v1    # "ttsSpans":[Landroid/text/style/TtsSpan;
    .end local p1    # "s":Landroid/text/Editable;
    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 80
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_9

    goto :goto_15

    .line 84
    :cond_9
    if-lez p3, :cond_14

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 85
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    .line 87
    :cond_14
    return-void

    .line 81
    :cond_15
    :goto_15
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 91
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_9

    goto :goto_15

    .line 95
    :cond_9
    if-lez p4, :cond_14

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 96
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    .line 98
    :cond_14
    return-void

    .line 92
    :cond_15
    :goto_15
    return-void
.end method
