; ModuleID = 'benchmark/cpp_transcoder/COUNT_OF_PAIRS_SATISFYING_THE_GIVEN_CONDITION/COUNT_OF_PAIRS_SATISFYING_THE_GIVEN_CONDITION_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_OF_PAIRS_SATISFYING_THE_GIVEN_CONDITION/COUNT_OF_PAIRS_SATISFYING_THE_GIVEN_CONDITION_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

$_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits = linkonce_odr dso_local local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 16
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_OF_PAIRS_SATISFYING_THE_GIVEN_CONDITION_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = bitcast %"class.std::__cxx11::basic_string"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7
  %5 = call i32 @llvm.abs.i32(i32 %1, i1 false)
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %25, label %7

7:                                                ; preds = %2, %21
  %8 = phi i32 [ %22, %21 ], [ %5, %2 ]
  %9 = phi i32 [ %23, %21 ], [ 1, %2 ]
  %10 = icmp ult i32 %8, 100
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = add i32 %9, 1
  br label %25

13:                                               ; preds = %7
  %14 = icmp ult i32 %8, 1000
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = add i32 %9, 2
  br label %25

17:                                               ; preds = %13
  %18 = icmp ult i32 %8, 10000
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = add i32 %9, 3
  br label %25

21:                                               ; preds = %17
  %22 = udiv i32 %8, 10000
  %23 = add i32 %9, 4
  %24 = icmp ult i32 %8, 100000
  br i1 %24, label %25, label %7, !llvm.loop !5

25:                                               ; preds = %21, %19, %15, %11, %2
  %26 = phi i32 [ %12, %11 ], [ %16, %15 ], [ %20, %19 ], [ 1, %2 ], [ %23, %21 ]
  %27 = lshr i32 %1, 31
  %28 = add i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %31 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  store %union.anon* %30, %union.anon** %31, align 8, !tbaa !8, !alias.scope !13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %29, i8 noundef signext 45)
  %32 = zext i32 %27 to i64
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8, !tbaa !16, !alias.scope !13
  %35 = getelementptr inbounds i8, i8* %34, i64 %32
  %36 = icmp ugt i32 %5, 99
  br i1 %36, label %37, label %59

37:                                               ; preds = %25
  %38 = add i32 %26, -1
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %44, %39 ], [ %5, %37 ]
  %41 = phi i32 [ %57, %39 ], [ %38, %37 ]
  %42 = urem i32 %40, 100
  %43 = shl nuw nsw i32 %42, 1
  %44 = udiv i32 %40, 100
  %45 = or i32 %43, 1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1, !tbaa !19
  %49 = zext i32 %41 to i64
  %50 = getelementptr inbounds i8, i8* %35, i64 %49
  store i8 %48, i8* %50, align 1, !tbaa !19
  %51 = zext i32 %43 to i64
  %52 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %51
  %53 = load i8, i8* %52, align 2, !tbaa !19
  %54 = add i32 %41, -1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %35, i64 %55
  store i8 %53, i8* %56, align 1, !tbaa !19
  %57 = add i32 %41, -2
  %58 = icmp ugt i32 %40, 9999
  br i1 %58, label %39, label %59, !llvm.loop !20

59:                                               ; preds = %39, %25
  %60 = phi i32 [ %5, %25 ], [ %44, %39 ]
  %61 = icmp ugt i32 %60, 9
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = shl i32 %60, 1
  %64 = or i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1, !tbaa !19
  %68 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %67, i8* %68, align 1, !tbaa !19
  %69 = zext i32 %63 to i64
  %70 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %69
  %71 = load i8, i8* %70, align 2, !tbaa !19
  br label %75

72:                                               ; preds = %59
  %73 = trunc i32 %60 to i8
  %74 = add i8 %73, 48
  br label %75

75:                                               ; preds = %62, %72
  %76 = phi i8 [ %74, %72 ], [ %71, %62 ]
  store i8 %76, i8* %35, align 1, !tbaa !19
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %78 = load i64, i64* %77, align 8, !tbaa !21
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %33, align 8, !tbaa !16
  br label %82

82:                                               ; preds = %80, %87
  %83 = phi i64 [ 0, %80 ], [ %88, %87 ]
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1, !tbaa !19
  %86 = icmp eq i8 %85, 57
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = add nuw i64 %83, 1
  %89 = icmp eq i64 %88, %78
  br i1 %89, label %90, label %82, !llvm.loop !22

90:                                               ; preds = %82, %87
  %91 = phi i64 [ %78, %87 ], [ %83, %82 ]
  %92 = and i64 %91, 4294967295
  br label %93

93:                                               ; preds = %90, %75
  %94 = phi i64 [ 0, %75 ], [ %92, %90 ]
  %95 = load i8*, i8** %33, align 8, !tbaa !16
  %96 = bitcast %union.anon* %30 to i8*
  %97 = icmp eq i8* %95, %96
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  call void @_ZdlPv(i8* noundef %95) #7
  br label %99

99:                                               ; preds = %93, %98
  %100 = icmp eq i64 %78, %94
  %101 = trunc i64 %78 to i32
  %102 = trunc i64 %78 to i32
  %103 = add i32 %102, -1
  %104 = select i1 %100, i32 %101, i32 %103
  %105 = mul i32 %104, %0
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7
  ret i32 %105
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_OF_PAIRS_SATISFYING_THE_GIVEN_CONDITION_processed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!15 = distinct !{!15, !"_ZNSt7__cxx119to_stringEi"}
!16 = !{!17, !10, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !18, i64 8, !11, i64 16}
!18 = !{!"long", !11, i64 0}
!19 = !{!11, !11, i64 0}
!20 = distinct !{!20, !6, !7}
!21 = !{!17, !18, i64 8}
!22 = distinct !{!22, !6, !7}
