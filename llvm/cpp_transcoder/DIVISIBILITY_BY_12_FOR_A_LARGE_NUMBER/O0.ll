; ModuleID = 'benchmark/cpp_transcoder/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%struct._Save_errno = type { i32 }
%"struct.std::integral_constant" = type { i8 }
%"struct.std::is_same" = type { i8 }

$_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi = comdat any

$_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_ = comdat any

$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev = comdat any

$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE = comdat any

$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
  %9 = icmp uge i64 %8, 3
  br i1 %9, label %10, label %56

10:                                               ; preds = %1
  %11 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
  %12 = sub i64 %11, 1
  %13 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %12)
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = srem i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %62

20:                                               ; preds = %10
  %21 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
  %22 = sub i64 %21, 2
  %23 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %22)
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %39, %20
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %33)
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %26, !llvm.loop !6

42:                                               ; preds = %26
  %43 = load i32, i32* %5, align 4
  %44 = srem i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 %47, 10
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %48, %49
  %51 = srem i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %46, %42
  %54 = phi i1 [ false, %42 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %62

56:                                               ; preds = %1
  %57 = call noundef i32 @_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64* noundef null, i32 noundef 10)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = srem i32 %58, 12
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %53, %19
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

declare noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64* noundef %1, i32 noundef %2) #4 comdat {
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %8 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #3
  %9 = load i64*, i64** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call noundef i32 @_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_(i64 (i8*, i8**, i32)* noundef @strtol, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %8, i64* noundef %9, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_(i64 (i8*, i8**, i32)* noundef %0, i8* noundef %1, i8* noundef %2, i64* noundef %3, i32 noundef %4) #4 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %6 = alloca i64 (i8*, i8**, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct._Save_errno, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %"struct.std::integral_constant", align 1
  %18 = alloca %"struct.std::is_same", align 1
  store i64 (i8*, i8**, i32)* %0, i64 (i8*, i8**, i32)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  call void @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev(%struct._Save_errno* noundef nonnull align 4 dereferenceable(4) %13)
  %19 = load i64 (i8*, i8**, i32)*, i64 (i8*, i8**, i32)** %6, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = invoke noundef i64 %19(i8* noundef %20, i8** noundef %12, i32 noundef %21)
          to label %23 unwind label %30

23:                                               ; preds = %5
  store i64 %22, i64* %14, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  invoke void @_ZSt24__throw_invalid_argumentPKc(i8* noundef %28) #9
          to label %29 unwind label %30

29:                                               ; preds = %27
  unreachable

30:                                               ; preds = %46, %38, %27, %5
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %15, align 8
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %16, align 4
  call void @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev(%struct._Save_errno* noundef nonnull align 4 dereferenceable(4) %13) #3
  br label %65

34:                                               ; preds = %23
  %35 = call i32* @__errno_location() #10
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 34
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %14, align 8
  %40 = bitcast %"struct.std::is_same"* %18 to %"struct.std::integral_constant"*
  %41 = bitcast %"struct.std::is_same"* %18 to %"struct.std::integral_constant"*
  %42 = invoke noundef zeroext i1 @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE(i64 noundef %39)
          to label %43 unwind label %30

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %34
  %45 = phi i1 [ true, %34 ], [ %42, %43 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %7, align 8
  invoke void @_ZSt20__throw_out_of_rangePKc(i8* noundef %47) #9
          to label %48 unwind label %30

48:                                               ; preds = %46
  unreachable

49:                                               ; preds = %44
  %50 = load i64, i64* %14, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52
  %54 = load i64*, i64** %9, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = load i64*, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %56, %53
  %64 = load i32, i32* %11, align 4
  call void @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev(%struct._Save_errno* noundef nonnull align 4 dereferenceable(4) %13) #3
  ret i32 %64

65:                                               ; preds = %30
  %66 = load i8*, i8** %15, align 8
  %67 = load i32, i32* %16, align 4
  %68 = insertvalue { i8*, i32 } undef, i8* %66, 0
  %69 = insertvalue { i8*, i32 } %68, i32 %67, 1
  resume { i8*, i32 } %69
}

; Function Attrs: nounwind
declare i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: nounwind
declare noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev(%struct._Save_errno* noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %struct._Save_errno*, align 8
  store %struct._Save_errno* %0, %struct._Save_errno** %2, align 8
  %3 = load %struct._Save_errno*, %struct._Save_errno** %2, align 8
  %4 = getelementptr inbounds %struct._Save_errno, %struct._Save_errno* %3, i32 0, i32 0
  %5 = call i32* @__errno_location() #10
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32* @__errno_location() #10
  store i32 0, i32* %7, align 4
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(i8* noundef) #6

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE(i64 noundef %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::integral_constant", align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, -2147483648
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp sgt i64 %7, 2147483647
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i1 [ true, %1 ], [ %8, %6 ]
  ret i1 %10
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(i8* noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev(%struct._Save_errno* noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %struct._Save_errno*, align 8
  store %struct._Save_errno* %0, %struct._Save_errno** %2, align 8
  %3 = load %struct._Save_errno*, %struct._Save_errno** %2, align 8
  %4 = call i32* @__errno_location() #10
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._Save_errno, %struct._Save_errno* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @__errno_location() #10
  store i32 %9, i32* %10, align 4
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn }
attributes #10 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
