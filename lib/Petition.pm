
use JSON::Name;
use JSON::Class;
class Petition does JSON::Class {
    class SignaturesByConstituency does JSON::Class {
        has Str $.name;
        has Int $.signature-count is json-name('signature_count');
        has Str $.mp;
        has Str $.ons-code is json-name('ons_code');
    }
    class SignaturesByCountry does JSON::Class {
        has Str $.name;
        has Int $.signature-count is json-name('signature_count');
        has Str $.code;
    }
    class Attributes does JSON::Class {
        has Str $.updated-at is json-name('updated_at');
        has Any $.rejected-at is json-name('rejected_at');
        has Str $.moderation-threshold-reached-at is json-name('moderation_threshold_reached_at');
        has Any $.scheduled-debate-date is json-name('scheduled_debate_date');
        has Any $.closed-at is json-name('closed_at');
        has Str $.background;
        has Str $.action;
        has Any $.debate-outcome-at is json-name('debate_outcome_at');
        has Int $.signature-count is json-name('signature_count');
        has Str $.response-threshold-reached-at is json-name('response_threshold_reached_at');
        has Any $.rejection;
        has Str $.created-at is json-name('created_at');
        has SignaturesByCountry @.signatures-by-country is json-name('signatures_by_country');
        has Any $.government-response is json-name('government_response');
        has SignaturesByConstituency @.signatures-by-constituency is json-name('signatures_by_constituency');
        has Str $.creator-name is json-name('creator_name');
        has Any $.debate;
        has Str $.debate-threshold-reached-at is json-name('debate_threshold_reached_at');
        has Str $.state;
        has Any $.government-response-at is json-name('government_response_at');
        has Str $.opened-at is json-name('opened_at');
        has Str $.additional-details is json-name('additional_details');
    }
    class Data does JSON::Class {
        has Attributes $.attributes handles <signatures-by-country signatures-by-constituency>;
        has Int $.id;
        has Str $.type;
    }
    class Links does JSON::Class {
        has Str $.self;
    }
    has Links $.links;
    has Data $.data handles <signatures-by-country signatures-by-constituency>;
}
