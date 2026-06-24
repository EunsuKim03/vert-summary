; ModuleID = 'benchmark/cpp_transcoder/SUM_PAIRWISE_PRODUCTS_1/SUM_PAIRWISE_PRODUCTS_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SUM_PAIRWISE_PRODUCTS_1/SUM_PAIRWISE_PRODUCTS_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_PAIRWISE_PRODUCTS_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add nsw i32 %0, 1
  %3 = mul nsw i32 %2, %0
  %4 = sdiv i32 %3, 2
  %5 = zext i32 %4 to i64
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = mul nuw nsw i64 %5, 3
  %9 = add i32 %0, -2
  %10 = zext i32 %9 to i65
  %11 = add i32 %0, -3
  %12 = zext i32 %11 to i65
  %13 = add i32 %0, -4
  %14 = mul nuw nsw i65 %10, %12
  %15 = zext i32 %13 to i65
  %16 = mul i65 %14, %15
  %17 = lshr i65 %16, 1
  %18 = trunc i65 %17 to i64
  %19 = mul i64 %18, -6148914691236517209
  %20 = zext i32 %9 to i67
  %21 = zext i32 %11 to i67
  %22 = mul nuw nsw i67 %20, %21
  %23 = zext i32 %13 to i67
  %24 = mul i67 %22, %23
  %25 = add i32 %0, -5
  %26 = zext i32 %25 to i67
  %27 = mul i67 %24, %26
  %28 = lshr i67 %27, 3
  %29 = trunc i67 %28 to i64
  %30 = add nsw i64 %8, -9
  %31 = zext i32 %9 to i64
  %32 = mul i64 %30, %31
  %33 = add nsw i64 %5, -15
  %34 = mul nuw nsw i65 %10, %12
  %35 = lshr i65 %34, 1
  %36 = trunc i65 %35 to i64
  %37 = mul i64 %33, %36
  %38 = add i64 %32, %37
  %39 = add i64 %38, %8
  %40 = add i64 %39, -2
  %41 = sub i64 %40, %29
  %42 = add i64 %19, %41
  br label %43

43:                                               ; preds = %7, %1
  %44 = phi i64 [ %5, %1 ], [ %42, %7 ]
  %45 = trunc i64 %44 to i32
  ret i32 %45
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_PAIRWISE_PRODUCTS_1_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
