.class Landroid/text/TextUtils$1;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "p"    # Landroid/os/Parcel;

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 858
    .local v0, "kind":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "string":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 860
    const/4 v2, 0x0

    return-object v2

    .line 863
    :cond_c
    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .line 864
    return-object v1

    .line 867
    :cond_10
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 870
    .local v2, "sp":Landroid/text/SpannableString;
    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 872
    if-nez v0, :cond_1d

    .line 873
    nop

    .line 997
    return-object v2

    .line 875
    :cond_1d
    packed-switch v0, :pswitch_data_152

    .line 993
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bogus span encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 989
    :pswitch_39
    new-instance v3, Landroid/text/style/AccessibilityReplacementSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AccessibilityReplacementSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 990
    goto :goto_15

    .line 985
    :pswitch_42
    new-instance v3, Landroid/text/style/LineHeightSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/LineHeightSpan$Standard;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 986
    goto :goto_15

    .line 981
    :pswitch_4b
    new-instance v3, Landroid/text/style/LineBackgroundSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/LineBackgroundSpan$Standard;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 982
    goto :goto_15

    .line 977
    :pswitch_54
    new-instance v3, Landroid/text/style/AccessibilityURLSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 978
    goto :goto_15

    .line 973
    :pswitch_5d
    new-instance v3, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 974
    goto :goto_15

    .line 969
    :pswitch_66
    new-instance v3, Landroid/text/style/TtsSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TtsSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 970
    goto :goto_15

    .line 965
    :pswitch_6f
    new-instance v3, Landroid/text/style/LocaleSpan;

    invoke-direct {v3, p1}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 966
    goto :goto_15

    .line 961
    :pswitch_78
    new-instance v3, Landroid/text/style/EasyEditSpan;

    invoke-direct {v3, p1}, Landroid/text/style/EasyEditSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 962
    goto :goto_15

    .line 957
    :pswitch_81
    new-instance v3, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuggestionRangeSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 958
    goto :goto_15

    .line 953
    :pswitch_8a
    new-instance v3, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SpellCheckSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 954
    goto :goto_15

    .line 949
    :pswitch_93
    new-instance v3, Landroid/text/style/SuggestionSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 950
    goto/16 :goto_15

    .line 945
    :pswitch_9d
    new-instance v3, Landroid/text/Annotation;

    invoke-direct {v3, p1}, Landroid/text/Annotation;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 946
    goto/16 :goto_15

    .line 941
    :pswitch_a7
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 942
    goto/16 :goto_15

    .line 937
    :pswitch_b1
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 938
    goto/16 :goto_15

    .line 933
    :pswitch_bb
    new-instance v3, Landroid/text/style/SubscriptSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SubscriptSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 934
    goto/16 :goto_15

    .line 929
    :pswitch_c5
    new-instance v3, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuperscriptSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 930
    goto/16 :goto_15

    .line 925
    :pswitch_cf
    new-instance v3, Landroid/text/style/TypefaceSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 926
    goto/16 :goto_15

    .line 921
    :pswitch_d9
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 922
    goto/16 :goto_15

    .line 917
    :pswitch_e3
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 918
    goto/16 :goto_15

    .line 913
    :pswitch_ed
    new-instance v3, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 914
    goto/16 :goto_15

    .line 909
    :pswitch_f7
    new-instance v3, Landroid/text/style/QuoteSpan;

    invoke-direct {v3, p1}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 910
    goto/16 :goto_15

    .line 905
    :pswitch_101
    new-instance v3, Landroid/text/style/BulletSpan;

    invoke-direct {v3, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 906
    goto/16 :goto_15

    .line 901
    :pswitch_10b
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, p1}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 902
    goto/16 :goto_15

    .line 897
    :pswitch_115
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3, p1}, Landroid/text/style/UnderlineSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 898
    goto/16 :goto_15

    .line 893
    :pswitch_11f
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v3, p1}, Landroid/text/style/StrikethroughSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 894
    goto/16 :goto_15

    .line 889
    :pswitch_129
    new-instance v3, Landroid/text/style/ScaleXSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ScaleXSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 890
    goto/16 :goto_15

    .line 885
    :pswitch_133
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 886
    goto/16 :goto_15

    .line 881
    :pswitch_13d
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 882
    goto/16 :goto_15

    .line 877
    :pswitch_147
    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v2, v3}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 878
    goto/16 :goto_15

    nop

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_147
        :pswitch_13d
        :pswitch_133
        :pswitch_129
        :pswitch_11f
        :pswitch_115
        :pswitch_10b
        :pswitch_101
        :pswitch_f7
        :pswitch_ed
        :pswitch_e3
        :pswitch_d9
        :pswitch_cf
        :pswitch_c5
        :pswitch_bb
        :pswitch_b1
        :pswitch_a7
        :pswitch_9d
        :pswitch_93
        :pswitch_8a
        :pswitch_81
        :pswitch_78
        :pswitch_6f
        :pswitch_66
        :pswitch_5d
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 850
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ljava/lang/CharSequence;
    .registers 3
    .param p1, "size"    # I

    .line 1002
    new-array v0, p1, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 850
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->newArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
