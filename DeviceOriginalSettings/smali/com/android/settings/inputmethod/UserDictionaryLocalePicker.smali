.class public Lcom/flyme/DeviceOriginalSettings/inputmethod/UserDictionaryLocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "UserDictionaryLocalePicker.java"


# direct methods
.method public constructor <init>(Lcom/flyme/DeviceOriginalSettings/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 0
    .param p1, "parent"    # Lcom/flyme/DeviceOriginalSettings/inputmethod/UserDictionaryAddWordFragment;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/inputmethod/UserDictionaryLocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 25
    return-void
.end method
